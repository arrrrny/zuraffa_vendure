// ignore_for_file: prefer_initializing_formals
// (the facade's private runtime fields are mutated by the static
// setters; an initializing formal would rename the public API)
import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:zuraffa/zuraffa.dart';

import '../data/datasources/graphql/graphql_vendure_datasource.dart';
import '../data/datasources/in_memory/in_memory_vendure_datasource.dart';
import '../data/datasources/local/token_local_datasource.dart';
import '../data/repositories/data_auth_repository.dart';
import '../data/repositories/data_catalog_repository.dart';
import '../data/repositories/data_customer_repository.dart';
import '../data/repositories/data_order_repository.dart';
import '../data/repositories/data_system_repository.dart';
import '../domain/datasources/vendure_datasource.dart';
import '../domain/entities/exports.dart';
import '../domain/operations/auth_operations.dart';
import '../domain/operations/catalog_operations.dart';
import '../domain/operations/custom_operations.dart';
import '../domain/operations/customer_operations.dart';
import '../domain/operations/order_operations.dart';
import '../domain/operations/system_operations.dart';
import '../domain/repositories/auth_repository.dart';
import '../domain/repositories/catalog_repository.dart';
import '../domain/repositories/customer_repository.dart';
import '../domain/repositories/order_repository.dart';
import '../domain/repositories/system_repository.dart';
import '../vendure/app_check_provider.dart';
import '../vendure/token_manager.dart';

import 'package:vendure/src/subscriptions/active_customer_stream_subscription.dart';

/// The Vendure facade — the package's entire public surface (spec 001,
/// contracts/facade.md). Five initializers bind the SDK to a Vendure
/// channel; six operation groups expose the commerce vocabulary; the
/// runtime setters re-route the context mid-session.
///
/// The construction pattern is the fleet's: the initializers build the
/// real stack (GraphQL datasource + repositories + operation groups);
/// [Vendure.forTesting] binds the pure-Dart in-memory datasource so
/// package and app tests assert in pure Dart, with no server.
class Vendure {
  Vendure._internal({
    required this.endpoint,
    required VendureDataSource dataSource,
    required AuthRepository authRepository,
    required OrderRepository orderRepository,
    required CatalogRepository catalogRepository,
    required CustomerRepository customerRepository,
    required SystemRepository systemRepository,
    TokenManager? tokenManager,
    Map<String, List<dynamic>>? customFieldsConfig,
    String? languageCode,
    String? channelToken,
    Duration? timeout,
    AppCheckConfig? appCheckConfig,
    String? apiKey,
    String? apiKeyHeaderKey,
    bool useVendureGuestSession = false,
  }) : _dataSource = dataSource,
       _tokenManager = tokenManager,
       _languageCode = languageCode,
       _channelToken = channelToken,
       _apiKey = apiKey,
       _apiKeyHeaderKey = apiKeyHeaderKey ?? 'vendure-api-key',
       _useVendureGuestSession = useVendureGuestSession {
    auth = AuthOperations(authRepository);
    order = OrderOperations(orderRepository);
    custom = CustomOperations(dataSource);
    customer = CustomerOperations(
      customerRepository,
      activeCustomerStreamProvider: _activeCustomerStreamProvider,
    );
    catalog = CatalogOperations(catalogRepository);
    system = SystemOperations(systemRepository);
  }

  // -------------------------------------------------------------------
  //  Initializers
  // -------------------------------------------------------------------

  static Vendure? _instance;
  static bool _initializing = false;

  /// The initialized singleton.
  static Vendure get instance {
    final i = _instance;
    if (i == null) {
      throw StateError(
        'Vendure has not been initialized. Call Vendure.initialize() first.',
      );
    }
    return i;
  }

  static bool get isInitialized => _instance != null;

  /// The default initializer: an endpoint plus the token lifecycle
  /// ([fetchToken]/[tokenParams] for session refresh, or a pre-set
  /// [token]).
  static Future<Vendure> initialize({
    required String endpoint,
    TokenFetcher? fetchToken,
    Map<String, dynamic>? tokenParams,
    Duration sessionDuration = const Duration(days: 365),
    String? token,
    bool? useVendureGuestSession,
    Map<String, List<dynamic>>? customFieldsConfig,
    String? languageCode,
    String? channelToken,
    Duration? timeout,
    AppCheckConfig? appCheckConfig,
    String? apiKey,
    String? apiKeyHeaderKey,
    bool enableEnumDiscovery = false,
  }) async {
    if (_initializing) {
      throw StateError('Vendure initialization is already in progress');
    }
    _initializing = true;
    try {
      final vendure = Vendure._initializingStack(
        endpoint: endpoint,
        fetchToken: fetchToken,
        tokenParams: tokenParams,
        sessionDuration: sessionDuration,
        token: token,
        useVendureGuestSession: useVendureGuestSession,
        customFieldsConfig: customFieldsConfig,
        languageCode: languageCode,
        channelToken: channelToken,
        timeout: timeout,
        appCheckConfig: appCheckConfig,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
      );
      await _finalizeInitialization(vendure, checkConnection: true);
      return vendure;
    } finally {
      _initializing = false;
    }
  }

  /// Native (username/password) authentication: authenticates against the
  /// endpoint before resolving, and wires the token refresh lifecycle.
  static Future<Vendure> initializeWithNativeAuth({
    required String endpoint,
    required String username,
    required String password,
    Duration sessionDuration = const Duration(days: 365),
    Duration? timeout,
    Map<String, List<dynamic>>? customFieldsConfig,
    AppCheckConfig? appCheckConfig,
    String? languageCode,
    String? channelToken,
    String? apiKey,
    String? apiKeyHeaderKey,
  }) async {
    if (_initializing) {
      throw StateError('Vendure initialization is already in progress');
    }
    _initializing = true;
    try {
      final token = await _nativeAuthToken(
        endpoint: endpoint,
        username: username,
        password: password,
        languageCode: languageCode,
        channelToken: channelToken,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
        appCheckConfig: appCheckConfig,
        timeout: timeout,
      );
      final vendure = Vendure._initializingStack(
        endpoint: endpoint,
        fetchToken: (params) => _nativeAuthToken(
          endpoint: endpoint,
          username: params['username'] as String,
          password: params['password'] as String,
          languageCode: languageCode,
          channelToken: channelToken,
          apiKey: apiKey,
          apiKeyHeaderKey: apiKeyHeaderKey,
          appCheckConfig: appCheckConfig,
          timeout: timeout,
        ),
        tokenParams: {'username': username, 'password': password},
        sessionDuration: sessionDuration,
        token: token,
        customFieldsConfig: customFieldsConfig,
        languageCode: languageCode,
        channelToken: channelToken,
        timeout: timeout,
        appCheckConfig: appCheckConfig,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
      );
      await _finalizeInitialization(vendure);
      return vendure;
    } finally {
      _initializing = false;
    }
  }

  /// Firebase auth: the token comes from a Firebase JWT, refreshed via
  /// the firebase authenticate mutation.
  static Future<Vendure> initializeWithFirebaseAuth({
    required String endpoint,
    required String uid,
    required String jwt,
    Duration sessionDuration = const Duration(hours: 1),
    Map<String, List<dynamic>>? customFieldsConfig,
    String? languageCode,
    String? channelToken,
    Duration? timeout,
    AppCheckConfig? appCheckConfig,
    String? apiKey,
    String? apiKeyHeaderKey,
  }) async {
    if (_initializing) {
      throw StateError('Vendure initialization is already in progress');
    }
    _initializing = true;
    try {
      final token = await _firebaseAuthToken(
        endpoint: endpoint,
        uid: uid,
        jwt: jwt,
        languageCode: languageCode,
        channelToken: channelToken,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
        appCheckConfig: appCheckConfig,
        timeout: timeout,
      );
      final vendure = Vendure._initializingStack(
        endpoint: endpoint,
        fetchToken: (params) => _firebaseAuthToken(
          endpoint: endpoint,
          uid: params['uid'] as String,
          jwt: params['jwt'] as String,
          languageCode: languageCode,
          channelToken: channelToken,
          apiKey: apiKey,
          apiKeyHeaderKey: apiKeyHeaderKey,
          appCheckConfig: appCheckConfig,
          timeout: timeout,
        ),
        tokenParams: {'uid': uid, 'jwt': jwt},
        sessionDuration: sessionDuration,
        token: token,
        customFieldsConfig: customFieldsConfig,
        languageCode: languageCode,
        channelToken: channelToken,
        timeout: timeout,
        appCheckConfig: appCheckConfig,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
      );
      await _finalizeInitialization(vendure);
      return vendure;
    } finally {
      _initializing = false;
    }
  }

  /// Custom token provider: the caller owns the token fetching; the SDK
  /// rides it.
  static Future<Vendure> initializeWithCustomAuth({
    required String endpoint,
    required TokenFetcher fetchToken,
    required Map<String, dynamic> tokenParams,
    Duration sessionDuration = const Duration(days: 365),
    Map<String, List<dynamic>>? customFieldsConfig,
    String? languageCode,
    String? channelToken,
    Duration? timeout,
    String? apiKey,
    String? apiKeyHeaderKey,
  }) async {
    if (_initializing) {
      throw StateError('Vendure initialization is already in progress');
    }
    _initializing = true;
    try {
      final token = await fetchToken(tokenParams);
      if (token == null) {
        throw Exception('Failed to fetch token');
      }
      final vendure = Vendure._initializingStack(
        endpoint: endpoint,
        fetchToken: fetchToken,
        tokenParams: tokenParams,
        sessionDuration: sessionDuration,
        token: token,
        customFieldsConfig: customFieldsConfig,
        languageCode: languageCode,
        channelToken: channelToken,
        timeout: timeout,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
      );
      await _finalizeInitialization(vendure);
      return vendure;
    } finally {
      _initializing = false;
    }
  }

  /// API-key initialization (server-to-server / admin guard contexts).
  static Future<Vendure> initializeWithApiKey({
    required String endpoint,
    required String apiKey,
    String? apiKeyHeaderKey,
    Map<String, List<dynamic>>? customFieldsConfig,
    String? languageCode,
    String? channelToken,
    Duration? timeout,
    AppCheckConfig? appCheckConfig,
  }) async {
    if (_initializing) {
      throw StateError('Vendure initialization is already in progress');
    }
    _initializing = true;
    try {
      final vendure = Vendure._initializingStack(
        endpoint: endpoint,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey,
        customFieldsConfig: customFieldsConfig,
        languageCode: languageCode,
        channelToken: channelToken,
        timeout: timeout,
        appCheckConfig: appCheckConfig,
      );
      await _finalizeInitialization(vendure, checkConnection: true);
      return vendure;
    } finally {
      _initializing = false;
    }
  }

  /// The test/dev constructor: binds the pure-Dart in-memory datasource.
  /// No server, no network — the scripted seam the suite asserts against.
  static Vendure forTesting({
    required String endpoint,
    required VendureDataSource dataSource,
    String? languageCode,
    String? channelToken,
    String? apiKey,
    String? apiKeyHeaderKey,
    Map<String, List<dynamic>>? customFieldsConfig,
    TokenManager? tokenManager,
  }) {
    final vendure = Vendure._initializingStack(
      endpoint: endpoint,
      dataSource: dataSource,
      languageCode: languageCode,
      channelToken: channelToken,
      apiKey: apiKey,
      apiKeyHeaderKey: apiKeyHeaderKey,
      customFieldsConfig: customFieldsConfig,
    );
    _instance = vendure;
    return vendure;
  }

  // -------------------------------------------------------------------
  //  The stack
  // -------------------------------------------------------------------

  static Vendure _initializingStack({
    required String endpoint,
    VendureDataSource? dataSource,
    TokenFetcher? fetchToken,
    Map<String, dynamic>? tokenParams,
    Duration sessionDuration = const Duration(days: 365),
    String? token,
    bool? useVendureGuestSession,
    Map<String, List<dynamic>>? customFieldsConfig,
    String? languageCode,
    String? channelToken,
    Duration? timeout,
    AppCheckConfig? appCheckConfig,
    String? apiKey,
    String? apiKeyHeaderKey,
  }) {
    final ds =
        dataSource ??
        GraphQLVendureDataSource(
          VendureContext(
            endpoint: endpoint,
            languageCode: languageCode,
            channelToken: channelToken,
            apiKey: apiKey,
            apiKeyHeaderKey: apiKeyHeaderKey ?? 'vendure-api-key',
            token: token,
            useVendureGuestSession: useVendureGuestSession ?? false,
            customFieldsConfig: customFieldsConfig,
            timeout: timeout,
            appCheckConfig: appCheckConfig,
          ),
        );
    final tokenManager = fetchToken != null && tokenParams != null
        ? TokenManager(
            fetchToken: fetchToken,
            params: tokenParams,
            sessionDuration: sessionDuration,
          )
        : null;
    final tokenLocal = TokenLocalDataSource(tokenManager ?? TokenManager());
    final authRepo = DataAuthRepository(
      dataSource: ds,
      tokenLocalDataSource: tokenLocal,
    );
    final orderRepo = DataOrderRepository(dataSource: ds);
    final catalogRepo = DataCatalogRepository(dataSource: ds);
    final customerRepo = DataCustomerRepository(dataSource: ds);
    final systemRepo = DataSystemRepository(dataSource: ds);
    return Vendure._internal(
      endpoint: endpoint,
      dataSource: ds,
      authRepository: authRepo,
      orderRepository: orderRepo,
      catalogRepository: catalogRepo,
      customerRepository: customerRepo,
      systemRepository: systemRepo,
      tokenManager: tokenManager,
      customFieldsConfig: customFieldsConfig,
      languageCode: languageCode,
      channelToken: channelToken,
      timeout: timeout,
      appCheckConfig: appCheckConfig,
      apiKey: apiKey,
      apiKeyHeaderKey: apiKeyHeaderKey,
      useVendureGuestSession: useVendureGuestSession ?? false,
    );
  }

  static Future<String?> _nativeAuthToken({
    required String endpoint,
    required String username,
    required String password,
    String? languageCode,
    String? channelToken,
    String? apiKey,
    String? apiKeyHeaderKey,
    AppCheckConfig? appCheckConfig,
    Duration? timeout,
  }) async {
    // A throwaway auth-only stack: the token rides the authenticate
    // mutation's response header, captured through mutateWithHeaders.
    final stack = Vendure._initializingStack(
      endpoint: endpoint,
      languageCode: languageCode,
      channelToken: channelToken,
      apiKey: apiKey,
      apiKeyHeaderKey: apiKeyHeaderKey,
      appCheckConfig: appCheckConfig,
      timeout: timeout,
    );
    final token = await stack.auth.getToken(
      username: username,
      password: password,
    );
    return token;
  }

  static Future<String?> _firebaseAuthToken({
    required String endpoint,
    required String uid,
    required String jwt,
    String? languageCode,
    String? channelToken,
    String? apiKey,
    String? apiKeyHeaderKey,
    AppCheckConfig? appCheckConfig,
    Duration? timeout,
  }) async {
    final stack = Vendure._initializingStack(
      endpoint: endpoint,
      languageCode: languageCode,
      channelToken: channelToken,
      apiKey: apiKey,
      apiKeyHeaderKey: apiKeyHeaderKey,
      appCheckConfig: appCheckConfig,
      timeout: timeout,
    );
    return stack.auth.getTokenFirebase(uid: uid, jwt: jwt);
  }

  // -------------------------------------------------------------------
  //  Runtime state
  // -------------------------------------------------------------------

  final String endpoint;
  final VendureDataSource _dataSource;
  final TokenManager? _tokenManager;
  final bool _useVendureGuestSession;

  String? _token;
  String? _languageCode;
  String? _channelToken;
  String? _apiKey;
  String? _apiKeyHeaderKey;

  /// The auth operations group.
  late final AuthOperations auth;

  /// The order operations group.
  late final OrderOperations order;

  /// The custom (raw GraphQL) operations group.
  late final CustomOperations custom;

  /// The customer operations group.
  late final CustomerOperations customer;

  /// The catalog operations group.
  late final CatalogOperations catalog;

  /// The system operations group.
  late final SystemOperations system;

  /// The current session token.
  String? get token => _token;

  /// The current channel token.
  String? get channelToken => _channelToken;

  /// The current language code.
  String? get languageCode => _languageCode;

  /// The current API key.
  String? get apiKey => _apiKey;

  /// The API key header name (defaults to `vendure-api-key`).
  String? get apiKeyHeaderKey => _apiKeyHeaderKey;

  // -------------------------------------------------------------------
  //  Runtime setters
  // -------------------------------------------------------------------

  static void setAuthToken(String token) {
    _requireInstance()._token = token;
  }

  static void setLanguageCode(String? languageCode) {
    _requireInstance()._languageCode = languageCode;
  }

  static String? getLanguageCode() => _requireInstance()._languageCode;

  static String? getChannelToken() => _requireInstance()._channelToken;

  static void setChannelToken(String? channelToken) {
    _requireInstance()._channelToken = channelToken;
  }

  static void setApiKey(String? apiKey, {String? apiKeyHeaderKey}) {
    final instance = _requireInstance();
    instance._apiKey = apiKey;
    if (apiKeyHeaderKey != null) {
      instance._apiKeyHeaderKey = apiKeyHeaderKey;
    }
  }

  /// Releases the singleton and the underlying transport.
  static void destroy() {
    _instance = null;
    _initializing = false;
  }

  /// Refreshes the session token through the configured fetcher.
  static Future<void> refreshToken(Map<String, dynamic> params) async {
    final manager = _requireInstance()._tokenManager;
    if (manager == null) {
      throw StateError('No TokenManager configured for this Vendure instance.');
    }
    return manager.refreshToken(params);
  }

  // -------------------------------------------------------------------
  //  Subscriptions
  // -------------------------------------------------------------------

  /// The live customer stream (the Vendure `activeCustomerStream`
  /// subscription). Yields the initial customer when
  /// [includeInitialValue] holds, then every live event.
  Stream<Customer> activeCustomerStream({
    String? websocketEndpoint,
    bool convertEnums = false,
    bool includeInitialValue = false,
  }) async* {
    if (includeInitialValue) {
      try {
        final initial = await customer.getActiveCustomer();
        if (initial != null) {
          yield initial;
        }
      } catch (_) {
        // The initial fetch is best-effort; the stream itself is the
        // contract (ported from the source SDK).
      }
    }
    yield* _dataSource.subscribe<Customer>(
      activeCustomerStreamSubscription,
      variables: const {},
      headers: const {},
      fromJson: Customer.fromJson,
      expectedDataType: 'activeCustomerStream',
    );
  }

  Stream<Customer> Function({
    String? websocketEndpoint,
    bool convertEnums,
    bool includeInitialValue,
  })
  get _activeCustomerStreamProvider => activeCustomerStream;

  // -------------------------------------------------------------------
  //  Internals
  // -------------------------------------------------------------------

  static Vendure _requireInstance() {
    final i = _instance;
    if (i == null) {
      throw StateError(
        'Vendure has not been initialized. Call Vendure.initialize() first.',
      );
    }
    return i;
  }

  /// The connection check every initializer runs before resolving: a
  /// `__typename` ping through the datasource. A failure tears the
  /// instance down and surfaces as initialization failure.
  static Future<void> _finalizeInitialization(
    Vendure instance, {
    bool checkConnection = false,
  }) async {
    _instance = instance;
    if (instance._useVendureGuestSession ||
        instance._token != null ||
        instance._apiKey != null ||
        instance._tokenManager != null) {
      // authenticated / guest / api-key stacks are all valid
    } else {
      throw Exception('Failed to set token in instance');
    }
    if (checkConnection) {
      try {
        await instance._dataSource.query<dynamic>(
          'query { __typename }',
          variables: const {},
          headers: const {},
          fromJson: (json) => json,
          expectedDataType: '__typename',
        );
      } catch (e) {
        _instance = null;
        throw Exception('Failed to initialize Vendure: $e');
      }
    }
  }
}

/// Registers the Vendure stack onto [getIt]: the GraphQL datasource and
/// the five repositories as lazy singletons (the fleet's composition-root
/// pattern). The in-memory adapters are bound by
/// [registerVendureTestDependencies].
void registerVendureDependencies(
  GetIt getIt, {
  required String endpoint,
  String? languageCode,
  String? channelToken,
  String? apiKey,
  String? apiKeyHeaderKey,
  String? token,
}) {
  getIt.registerLazySingleton<VendureDataSource>(
    () => GraphQLVendureDataSource(
      VendureContext(
        endpoint: endpoint,
        languageCode: languageCode,
        channelToken: channelToken,
        apiKey: apiKey,
        apiKeyHeaderKey: apiKeyHeaderKey ?? 'vendure-api-key',
        token: token,
      ),
    ),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => DataAuthRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<OrderRepository>(
    () => DataOrderRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<CatalogRepository>(
    () => DataCatalogRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<CustomerRepository>(
    () => DataCustomerRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<SystemRepository>(
    () => DataSystemRepository(dataSource: getIt()),
  );
}

/// The test/dev composition root: binds the in-memory datasource and the
/// repositories over it — the pure-Dart stack the suite asserts against.
void registerVendureTestDependencies(GetIt getIt) {
  getIt.registerLazySingleton<VendureDataSource>(
    () => InMemoryVendureDataSource(),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => DataAuthRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<OrderRepository>(
    () => DataOrderRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<CatalogRepository>(
    () => DataCatalogRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<CustomerRepository>(
    () => DataCustomerRepository(dataSource: getIt()),
  );
  getIt.registerLazySingleton<SystemRepository>(
    () => DataSystemRepository(dataSource: getIt()),
  );
}
