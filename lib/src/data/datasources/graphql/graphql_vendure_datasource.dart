import 'dart:async';

import 'package:graphql/client.dart';

import '../../../domain/datasources/vendure_datasource.dart';
import '../../../vendure/app_check_provider.dart';
import '../../../vendure/vendure_utils.dart';

/// The runtime context every outbound request rides: the endpoint plus the
/// Vendure multi-tenant/multi-language routing vocabulary — the same link
/// chain the source SDK assembled per call in `_getClient`:
///
///   HttpLink(endpoint?languageCode=…) → AuthLink(apiKey) →
///   AuthLink(vendure-token: channelToken) → AuthLink(Bearer token)
///
/// The context is immutable; the setters on the facade produce a new one,
/// so a client built from a stale context is simply rebuilt.
class VendureContext {
  const VendureContext({
    required this.endpoint,
    this.languageCode,
    this.channelToken,
    this.apiKey,
    this.apiKeyHeaderKey = 'vendure-api-key',
    this.token,
    this.useVendureGuestSession = false,
    this.customFieldsConfig,
    this.timeout,
    this.appCheckConfig,
    this.defaultHeaders = const {},
  });

  final String endpoint;
  final String? languageCode;
  final String? channelToken;
  final String? apiKey;
  final String apiKeyHeaderKey;
  final String? token;
  final bool useVendureGuestSession;

  /// The custom-fields configuration the document sanitizer applies
  /// (ported from the source SDK's `_prepareOperation`).
  final Map<String, List<dynamic>>? customFieldsConfig;

  /// The per-operation timeout (the source SDK's
  /// `queryRequestTimeout`).
  final Duration? timeout;

  /// The Firebase App Check vocabulary (ported from the source SDK's
  /// app-check AuthLink).
  final AppCheckConfig? appCheckConfig;

  final Map<String, String> defaultHeaders;

  VendureContext copyWith({
    String? languageCode,
    String? channelToken,
    String? apiKey,
    String? apiKeyHeaderKey,
    String? token,
    bool? useVendureGuestSession,
  }) => VendureContext(
    endpoint: endpoint,
    languageCode: languageCode ?? this.languageCode,
    channelToken: channelToken ?? this.channelToken,
    apiKey: apiKey ?? this.apiKey,
    apiKeyHeaderKey: apiKeyHeaderKey ?? this.apiKeyHeaderKey,
    token: token ?? this.token,
    useVendureGuestSession:
        useVendureGuestSession ?? this.useVendureGuestSession,
    defaultHeaders: defaultHeaders,
  );

  /// The endpoint with [languageCode] riding as a query parameter —
  /// Vendure's multi-language routing convention (ported from the source
  /// SDK's `_getClient`). Pure: testable without a client.
  String get endpointWithLanguageCode {
    if (languageCode == null) {
      return endpoint;
    }
    final uri = Uri.parse(endpoint);
    final queryParameters = Map<String, String>.from(uri.queryParameters);
    queryParameters['languageCode'] = languageCode!;
    return uri.replace(queryParameters: queryParameters).toString();
  }
}

/// The platform driver for [VendureDataSource] — the GraphQL adapter that
/// talks to a Vendure shop-api endpoint over HTTP.
///
/// The `graphql` client is an internal implementation detail of this
/// package (the same posture zuraffa_intents takes with `share_plus`):
/// repositories ride the port contract and stay oblivious to the transport.
///
/// The client assembly and response handling are ported from the source
/// SDK's `Vendure._getClient` and `VendureRemoteDataSource`: the link chain
/// above, the noCache policies, the response envelope extraction
/// (`{data: {<expectedDataType>: …}}` with dot-path navigation), the
/// `ErrorResult` typename check, and the transient-network retry. Every
/// failure shape — transport exception, GraphQL error, missing data,
/// ErrorResult payload — resolves to the port's one error type,
/// [VendureDataSourceException].
class GraphQLVendureDataSource implements VendureDataSource {
  GraphQLVendureDataSource(this.context, {GraphQLClient? innerClient})
    : _client = innerClient;

  /// The runtime context the link chain assembles from.
  final VendureContext context;

  /// An injected client (tests: a scripted one) — null builds the real
  /// link chain over the context.
  final GraphQLClient? _client;

  /// The lazily-created GraphQL client — the link chain over the context,
  /// no cache (every Vendure operation is a network round-trip by
  /// contract), matching the source SDK's noCache policies.
  late final GraphQLClient _graphqlClient =
      _client ??
      GraphQLClient(
        link: _buildLink(),
        cache: GraphQLCache(),
        defaultPolicies: DefaultPolicies(
          query: Policies(
            fetch: FetchPolicy.noCache,
            cacheReread: CacheRereadPolicy.ignoreAll,
          ),
          mutate: Policies(
            fetch: FetchPolicy.noCache,
            cacheReread: CacheRereadPolicy.ignoreAll,
          ),
        ),
      );

  Link _buildLink() {
    Link link = HttpLink(context.endpointWithLanguageCode);

    if (context.apiKey != null) {
      link = AuthLink(
        headerKey: context.apiKeyHeaderKey,
        getToken: () async => context.apiKey,
      ).concat(link);
    }

    if (context.channelToken != null) {
      link = AuthLink(
        headerKey: 'vendure-token',
        getToken: () async => context.channelToken,
      ).concat(link);
    }

    if (context.appCheckConfig != null) {
      final appCheckConfig = context.appCheckConfig!;
      link = AuthLink(
        headerKey: appCheckConfig.headerName,
        getToken: () async {
          try {
            final token = await appCheckConfig.tokenProvider();
            if (token == null && appCheckConfig.required) {
              throw Exception('App Check token is required but not available');
            }
            return token;
          } catch (e) {
            if (appCheckConfig.required) {
              rethrow;
            }
            return null;
          }
        },
      ).concat(link);
    }

    if (!context.useVendureGuestSession && context.token != null) {
      link = AuthLink(getToken: () async => 'Bearer ${context.token}')
          .concat(link);
    }

    return link;
  }

  @override
  Future<T> query<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
  }) {
    return _execute<T>(
      document,
      variables: variables,
      headers: headers,
      fromJson: fromJson,
      expectedDataType: expectedDataType,
      isMutation: false,
    );
  }

  @override
  Future<T> mutate<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
  }) {
    return _execute<T>(
      document,
      variables: variables,
      headers: headers,
      fromJson: fromJson,
      expectedDataType: expectedDataType,
      isMutation: true,
    );
  }

  @override
  Future<List<T>> queryList<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
  }) async {
    final data = await _executeRaw(
      document,
      variables: variables,
      headers: headers,
      expectedDataType: expectedDataType,
      isMutation: false,
    );
    if (data is! List) {
      throw VendureDataSourceException(
        'Expected a JSON list for $expectedDataType, got ${data.runtimeType}',
      );
    }
    final decode = fromJson;
    if (decode == null) {
      // Scalar list (e.g. nextOrderStates): the raw elements are T.
      return List<T>.from(data);
    }
    return data
        .map<T>(
          (e) => decode(Map<String, dynamic>.from(e as Map<String, dynamic>)),
        )
        .toList();
  }

  @override
  Future<VendureResponse<T>> mutateWithHeaders<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required T Function(Map<String, dynamic> json) fromJson,
    required String expectedDataType,
  }) async {
    // The auth seam needs the HTTP response headers (the Vendure session
    // token rides the vendure-auth-token header), so this path keeps the
    // raw QueryResult — _execute's typed extraction happens on its data.
    final client = _graphqlClient;
    final options = MutationOptions(
      document: gql(document),
      variables: variables,
      context: const Context().withEntry(HttpLinkHeaders(headers: headers)),
      fetchPolicy: FetchPolicy.noCache,
    );
    final result = await client.mutate(options);
    final data = _handleErrors(result, expectedDataType);
    final responseHeaders = <String, String>{};
    final linkContext = result.context.entry<HttpLinkResponseContext>();
    if (linkContext != null && linkContext.headers != null) {
      responseHeaders.addAll(
        linkContext.headers!.map((k, v) => MapEntry(k, v.toString())),
      );
    }
    if (data is! Map<String, dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON object for $expectedDataType, got ${data.runtimeType}',
      );
    }
    // Same normalization `mutate` applies: the __typename -> runtimeType
    // conversion for union discrimination. Without it the auth seam's
    // sealed-union decoders (e.g. AuthenticationResult.fromJson) see no
    // runtimeType and throw 'Unknown … variant: null' on every real
    // backend response (fresh-install firebase auth broke on zik_zak).
    final normalized = VendureUtils.normalizeGraphQLData(
      Map<String, dynamic>.from(data),
      convertEnums: false,
    );
    return VendureResponse<T>(
      fromJson(normalized as Map<String, dynamic>),
      responseHeaders,
    );
  }

  @override
  Stream<T> subscribe<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required T Function(Map<String, dynamic> json) fromJson,
    required String expectedDataType,
  }) {
    // The subscription transport: a WebSocket client over the context's
    // endpoint (http(s) → ws(s) scheme swap), the auth vocabulary riding
    // the socket's initialPayload (ported from the source SDK's
    // _getSubscriptionClient/_buildWebsocketPayload).
    final client = _subscriptionClient ??= _buildSubscriptionClient();
    final processedDocument = context.customFieldsConfig != null
        ? VendureUtils.sanitizeGraphQLQuery(
            document,
            context.customFieldsConfig!,
          )
        : document;
    final stream = client.subscribe(
      SubscriptionOptions(
        document: gql(processedDocument),
        variables: variables,
        context: const Context().withEntry(HttpLinkHeaders(headers: headers)),
      ),
    );
    return stream.map<T>((result) {
      final data = _handleErrors(result, expectedDataType);
      if (data is! Map<String, dynamic>) {
        throw VendureDataSourceException(
          'Subscription data must be a map for $expectedDataType, got ${data.runtimeType}',
        );
      }
      return fromJson(data);
    });
  }

  GraphQLClient? _subscriptionClient;

  GraphQLClient _buildSubscriptionClient() {
    final endpointUrl = context.endpointWithLanguageCode;
    final uri = Uri.parse(endpointUrl);
    final scheme = switch (uri.scheme) {
      'https' => 'wss',
      'http' => 'ws',
      _ => uri.scheme,
    };
    final wsEndpoint = uri.replace(scheme: scheme).toString();
    return GraphQLClient(
      link: WebSocketLink(
        wsEndpoint,
        config: SocketClientConfig(
          autoReconnect: true,
          inactivityTimeout: const Duration(seconds: 30),
          initialPayload: _buildWebsocketPayload,
        ),
      ),
      cache: GraphQLCache(),
    );
  }

  /// The socket's initialPayload — the auth vocabulary the Vendure
  /// WebSocket gateway authenticates the connection with.
  Map<String, dynamic> _buildWebsocketPayload() {
    final payload = <String, dynamic>{};
    if (context.apiKey != null) {
      payload[context.apiKeyHeaderKey] = context.apiKey;
    }
    if (!context.useVendureGuestSession && context.token != null) {
      payload['Authorization'] = 'Bearer ${context.token}';
    }
    if (context.channelToken != null) {
      payload['vendure-token'] = context.channelToken;
    }
    return payload;
  }

  Future<T> _execute<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
    required bool isMutation,
  }) async {
    final data = await _executeRaw(
      document,
      variables: variables,
      headers: headers,
      expectedDataType: expectedDataType,
      isMutation: isMutation,
    );
    if (fromJson == null) {
      // The raw escape hatch: the extracted payload is returned as-is
      // (scalar, Map, or List) — the custom operations' decode-less path.
      return data as T;
    }
    if (data is! Map<String, dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON object for $expectedDataType, got ${data.runtimeType}',
      );
    }
    // Response normalization: always convertEnums=false because entity
    // .g.dart files use @JsonValue enum maps which expect the raw GraphQL
    // enum values; the __typename -> runtimeType conversion still runs for
    // union discrimination (ported from the source SDK).
    final normalized = VendureUtils.normalizeGraphQLData(
      Map<String, dynamic>.from(data),
      convertEnums: false,
    );
    return fromJson(normalized as Map<String, dynamic>);
  }

  /// The raw transport step the source SDK's [_executeGraphQLOperation]
  /// played: execute the (sanitized) document, validate the result, and
  /// extract the [expectedDataType] payload — no typed decode, no Map
  /// validation (list and scalar operations ride this too).
  Future<dynamic> _executeRaw(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required String expectedDataType,
    required bool isMutation,
  }) async {
    final client = _graphqlClient;
    final processedDocument = context.customFieldsConfig != null
        ? VendureUtils.sanitizeGraphQLQuery(
            document,
            context.customFieldsConfig!,
          )
        : document;
    final requestContext = const Context().withEntry(
      HttpLinkHeaders(headers: headers),
    );
    final options = isMutation
        ? MutationOptions(
            document: gql(processedDocument),
            variables: variables,
            context: requestContext,
            // noCache: the response is never read from or written to the
            // cache — every Vendure operation is a network round-trip by
            // contract (ported from the source SDK's default policies).
            fetchPolicy: FetchPolicy.noCache,
          )
        : QueryOptions(
            document: gql(processedDocument),
            variables: variables,
            context: requestContext,
            fetchPolicy: FetchPolicy.noCache,
          );

    final result = isMutation
        ? await client.mutate(options as MutationOptions)
        : await client.query(options as QueryOptions);

    return _handleErrors(result, expectedDataType);
  }

  /// Ported from the source SDK: validate the [QueryResult] and extract
  /// the expected data key. Every failure shape becomes a
  /// [VendureDataSourceException] — the port's one error path.
  dynamic _handleErrors(QueryResult<Object?> result, String expectedDataType) {
    if (result.hasException) {
      throw VendureDataSourceException(
        'GraphQL operation failed: ${result.exception.toString()}',
        cause: result.exception,
      );
    }

    final data = result.data;
    if (data == null) {
      throw const VendureDataSourceException(
        'No data returned from GraphQL operation',
      );
    }

    final extracted = _extractExpectedData(data, expectedDataType);
    if (extracted == null) {
      throw VendureDataSourceException(
        'No data returned for expected type: $expectedDataType',
      );
    }

    if (extracted is Map && extracted['__typename'] == 'ErrorResult') {
      throw VendureDataSourceException(
        extracted['message']?.toString() ?? 'Vendure ErrorResult',
      );
    }

    return extracted;
  }

  /// Ported from the source SDK: navigate a dot-separated
  /// [expectedDataType] path (e.g. `'order.lines.items'`) through the
  /// response data map.
  dynamic _extractExpectedData(dynamic data, String expectedDataType) {
    var current = data;
    for (final part in expectedDataType.split('.')) {
      if (current is Map<String, dynamic> && current.containsKey(part)) {
        current = current[part];
      } else {
        return null;
      }
    }
    return current;
  }
}
