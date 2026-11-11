import 'dart:async';
import 'dart:convert';

import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

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
    Duration? timeout,
    AppCheckConfig? appCheckConfig,
    Map<String, List<dynamic>>? customFieldsConfig,
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
    // The transport vocabulary rides the rebuild too — a copyWith that
    // silently reverted a consumer's explicit timeout to graphql's 5s
    // default would resurrect the `Bad state: Future already completed`
    // crash this file's queryRequestTimeout contract exists to prevent.
    timeout: timeout ?? this.timeout,
    appCheckConfig: appCheckConfig ?? this.appCheckConfig,
    customFieldsConfig: customFieldsConfig ?? this.customFieldsConfig,
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
  late final GraphQLClient _graphqlClient = _client ?? buildDefaultClient();

  /// The default (non-injected) GraphQL client over this context's real
  /// link chain — public so the transport regression suite can pin the
  /// wire configuration without a server; production traffic flows
  /// through [query]/[mutate]/[queryList]/[mutateWithHeaders].
  @visibleForTesting
  GraphQLClient buildDefaultClient() => GraphQLClient(
    link: _buildLink(),
    cache: GraphQLCache(),
    // The request timeout is NEVER armed on the client — not even when
    // the context carries a per-operation timeout. graphql enforces
    // `queryRequestTimeout` with a `Stream.timeout` whose timer survives
    // the request, whose expiry lands outside the awaiting zone, and
    // whose late real response double-completes the query manager's
    // unguarded onData completer: the consumer-side unhandled
    // `Bad state: Future already completed` crash (zik_zak issue 265;
    // zuraffa_vendure#8, observed live against raptorr tr). `null` here
    // must be EXPLICIT — omitting the parameter restores graphql's
    // silent 5s default, which is exactly the published-7.3.8
    // regression. The context timeout is instead enforced per call with
    // cancellable `Future.timeout` in [_enforceBudget]
    // (_executeRaw/mutateWithHeaders), restoring the source SDK's
    // `queryRequestTimeout` contract: `timeout: null` = no package-level
    // budget, the consumer owns it.
    queryRequestTimeout: null,
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
    final result = await _enforceBudget(client.mutate(options));
    // Error validation only — NOT the typed extraction: the auth seam's
    // contract (ported from the source SDK's
    // AuthBaseOperations.extractResponseHeaders) is that the session token
    // rides the response HEADER, so the body is irrelevant on this path.
    // An absent expectedDataType key (a server that answers the mutation
    // with only __typename, or an empty data envelope) must NOT throw —
    // the decoded data is simply null. Only a present-but-wrong-shape
    // payload is an error.
    if (result.hasException) {
      throw _failureException(result);
    }
    final envelope = result.data;
    if (envelope == null) {
      throw const VendureDataSourceException(
        'No data returned from GraphQL operation',
      );
    }
    final extracted = _extractExpectedData(envelope, expectedDataType);
    if (extracted is Map && extracted['__typename'] == 'ErrorResult') {
      throw VendureDataSourceException(
        extracted['message']?.toString() ?? 'Vendure ErrorResult',
      );
    }
    final responseHeaders = <String, String>{};
    final linkContext = result.context.entry<HttpLinkResponseContext>();
    if (linkContext != null && linkContext.headers != null) {
      responseHeaders.addAll(
        linkContext.headers!.map((k, v) => MapEntry(k, v.toString())),
      );
    }
    if (extracted == null) {
      return VendureResponse<T>(null, responseHeaders);
    }
    if (extracted is! Map<String, dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON object for $expectedDataType, got ${extracted.runtimeType}',
      );
    }
    final normalized = VendureUtils.normalizeGraphQLData(
      Map<String, dynamic>.from(extracted),
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
    final client = _subscriptionClient ??= buildSubscriptionClient();
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

  /// The subscription client over the websocket transport — public so the
  /// transport regression suite can pin the wire configuration (protocol,
  /// endpoint scheme/languageCode swap) without a server; production
  /// traffic flows through [subscribe].
  @visibleForTesting
  GraphQLClient buildSubscriptionClient() {
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
        // The Vendure server speaks graphql-transport-ws (the protocol of
        // the npm `graphql-ws` library); the legacy `graphqlWs` default
        // gets the socket closed by the server right after connection_init,
        // which with autoReconnect becomes an endless
        // connect/initialise/disconnect loop. Restored from the source
        // SDK (vendure-flutter-sdk 3.0.1 `_getSubscriptionClient`).
        subProtocol: GraphQLProtocol.graphqlTransportWs,
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

    final result = await _enforceBudget(
      isMutation
          ? client.mutate(options as MutationOptions)
          : client.query(options as QueryOptions),
    );

    return _handleErrors(result, expectedDataType);
  }

  /// Enforces [VendureContext.timeout] as a per-call budget with
  /// `Future.timeout` — deliberately NOT via the graphql client's
  /// `queryRequestTimeout` (a `Stream.timeout`): that timer keeps running
  /// after the request settles, its expiry escapes the awaiting zone as an
  /// unhandled async error, and the late real response double-completes
  /// the query manager's unguarded onData completer — the
  /// `Bad state: Future already completed` crash (zik_zak issue 265;
  /// zuraffa_vendure#8). `Future.timeout` cancels its timer when the call
  /// completes first, and its expiry propagates through the awaiting
  /// chain as the port's one failure type with the [TimeoutException]
  /// cause.
  Future<T> _enforceBudget<T>(Future<T> pending) {
    final timeout = context.timeout;
    if (timeout == null) return pending;
    return pending.timeout(
      timeout,
      onTimeout: () => throw VendureDataSourceException(
        'Vendure operation timed out after ${timeout.inMilliseconds}ms',
        cause: TimeoutException(
          'Vendure operation exceeded its '
          '${timeout.inMilliseconds}ms budget',
          timeout,
        ),
      ),
    );
  }

  /// Ported from the source SDK: validate the [QueryResult] and extract
  /// the expected data key. Every failure shape becomes a
  /// [VendureDataSourceException] — the port's one error path.
  dynamic _handleErrors(QueryResult<Object?> result, String expectedDataType) {
    if (result.hasException) {
      throw _failureException(result);
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

  /// The excerpt cap — the first 512 bytes of a failing response's body.
  static const _bodyExcerptBytes = 512;

  /// Credential shapes the body excerpt must never leak into a log span:
  /// JWTs (three base64url segments) and labeled secrets
  /// (`Authorization: Bearer …`, `token=…`, api keys, passwords).
  static final _jwtPattern = RegExp(
    r'eyJ[A-Za-z0-9_-]{5,}\.[A-Za-z0-9_-]{5,}\.[A-Za-z0-9_-]{5,}',
  );
  static final _labeledSecretPattern = RegExp(
    r'\b(bearer|authorization|token|api[-_]?key|apikey|password|secret)'
    r'(\s*[:=]\s*|\s+)(\S{8,})',
    caseSensitive: false,
  );

  /// The failure exception the port surfaces for [result] — the flattened
  /// message plus whatever HTTP context the failing response exposed
  /// (issue #6). The status/content-type ride two places:
  ///
  ///  - the response context (present whenever a Response was yielded —
  ///    GraphQL errors on a 200), and
  ///  - the raw [http.Response] the gql_http_link attaches to its
  ///    parse/server link exceptions — present exactly where the context
  ///    is not: the JSON parser discards a non-JSON body, but the link
  ///    exception keeps the response that failed to parse (a Cloudflare
  ///    challenge page, a 502 HTML error, an empty 204).
  VendureDataSourceException _failureException(QueryResult<Object?> result) {
    final exception = result.exception;
    final linkResponseContext = result.context.entry<HttpLinkResponseContext>();
    final rawResponse = _responseOf(exception?.linkException);
    final headers = <String, String>{
      if (linkResponseContext?.headers != null)
        ...linkResponseContext!.headers!,
      if (rawResponse != null) ...rawResponse.headers,
    };
    return VendureDataSourceException(
      'GraphQL operation failed: ${exception.toString()}',
      cause: exception,
      statusCode: linkResponseContext?.statusCode ?? rawResponse?.statusCode,
      contentType: headers['content-type'],
      responseBodyExcerpt: rawResponse == null
          ? null
          : _redactBodyExcerpt(rawResponse.bodyBytes),
    );
  }

  /// The `http.Response` a gql_http_link >= 1.1.0 parse/server link
  /// exception carries. Structural read: the field is absent on older
  /// gql_http_link resolutions (bare `ResponseFormatException`, the body
  /// lost there) and on `NetworkException`s (no response ever arrived) —
  /// the excerpt simply stays null.
  static http.Response? _responseOf(Object? linkException) {
    if (linkException == null) {
      return null;
    }
    try {
      final response = (linkException as dynamic).response;
      return response is http.Response ? response : null;
    } on NoSuchMethodError {
      return null;
    }
  }

  /// The first [_bodyExcerptBytes] bytes of the failing body, decoded
  /// lossily, with credential-shaped substrings masked before the excerpt
  /// can reach a log span.
  static String _redactBodyExcerpt(List<int> bodyBytes) {
    final capped = bodyBytes.length > _bodyExcerptBytes
        ? bodyBytes.sublist(0, _bodyExcerptBytes)
        : bodyBytes;
    return utf8
        .decode(capped, allowMalformed: true)
        .replaceAllMapped(_jwtPattern, (_) => '[redacted-jwt]')
        .replaceAllMapped(
          _labeledSecretPattern,
          (match) => '${match.group(1)}[redacted]',
        );
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
