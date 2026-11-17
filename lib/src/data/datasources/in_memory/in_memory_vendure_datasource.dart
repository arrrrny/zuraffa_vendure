import '../../../domain/datasources/vendure_datasource.dart';
import '../../../vendure/vendure_utils.dart';

/// One recorded Vendure request — the document, variables, headers, and
/// the kind of operation, exactly as the repository passed them.
class VendureRequestRecord {
  const VendureRequestRecord({
    required this.document,
    required this.variables,
    required this.headers,
    required this.isMutation,
    required this.expectedDataType,
  });

  final String document;
  final Map<String, dynamic> variables;
  final Map<String, String> headers;
  final bool isMutation;
  final String? expectedDataType;
}

/// The pure-Dart [VendureDataSource] — the test/dev stand-in for the
/// GraphQL adapter.
///
/// The adapter plays the endpoint role the shop-api plays on a server:
/// [script] maps an operation name to the canned `data` payload it should
/// return (the Vendure response envelope minus the `data` wrapper), and
/// [requests] exposes every executed document/variables/headers so tests
/// assert the exact outbound request in pure Dart, with no HTTP transport
/// (spec 001 FR-005/FR-008).
class InMemoryVendureDataSource implements VendureDataSource {
  /// Canned response payloads keyed by the operation name the repository
  /// declares via [expectedDataType] — each value is the EXTRACTED payload
  /// (the Vendure response envelope minus the `data` wrapper and minus the
  /// [expectedDataType] key): a Map for object operations, a bare List for
  /// list operations, a scalar for raw custom queries. A miss resolves to
  /// an empty map — the shape a real endpoint returns for an operation
  /// with no data.
  ///
  /// The key is NULLABLE: `script[null]` holds the payload a caller gets
  /// when it omits `expectedDataType` (the tolerant default,
  /// zuraffa_vendure#17). The double has no envelope to unwrap, so the
  /// script value IS the extracted payload and no root-field heuristic
  /// applies here.
  final Map<String?, dynamic> script;

  /// When non-null, every operation throws this instead of returning the
  /// scripted payload (the failure-path test seam).
  final VendureDataSourceException? error;

  InMemoryVendureDataSource({this.script = const {}, this.error});

  /// Every executed request, in call order.
  final List<VendureRequestRecord> requests = [];

  @override
  Future<T> query<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String? expectedDataType,
  }) async {
    return _execute<T>(
      document,
      variables,
      headers,
      expectedDataType,
      isMutation: false,
      fromJson: fromJson,
    );
  }

  @override
  Future<T> mutate<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String? expectedDataType,
  }) async {
    return _execute<T>(
      document,
      variables,
      headers,
      expectedDataType,
      isMutation: true,
      fromJson: fromJson,
    );
  }

  T _execute<T>(
    String document,
    Map<String, dynamic> variables,
    Map<String, String> headers,
    String? expectedDataType, {
    required bool isMutation,
    T Function(Map<String, dynamic> json)? fromJson,
  }) {
    requests.add(
      VendureRequestRecord(
        document: document,
        variables: variables,
        headers: headers,
        isMutation: isMutation,
        expectedDataType: expectedDataType,
      ),
    );
    final scripted = error;
    if (scripted != null) {
      throw scripted;
    }
    final payload = script[expectedDataType] ?? <String, dynamic>{};
    final decode = fromJson;
    if (decode == null) {
      // The raw escape hatch: the extracted payload is returned as-is
      // (scalar, Map, or List) — the custom operations' decode-less path.
      return payload as T;
    }
    if (payload is! Map<String, dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON object for '
        '${_describeExpectedType(expectedDataType)}, '
        'got ${payload.runtimeType}',
      );
    }
    // Response normalization (ported from the source SDK's remote
    // datasource): __typename -> runtimeType for union discrimination;
    // always convertEnums=false because the zorphy entities' generated
    // enum maps expect the raw GraphQL enum values.
    final normalized = VendureUtils.normalizeGraphQLData(
      Map<String, dynamic>.from(payload),
      convertEnums: false,
    );
    return decode(normalized as Map<String, dynamic>);
  }

  @override
  Future<List<T>> queryList<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String? expectedDataType,
  }) async {
    requests.add(
      VendureRequestRecord(
        document: document,
        variables: variables,
        headers: headers,
        isMutation: false,
        expectedDataType: expectedDataType,
      ),
    );
    final scripted = error;
    if (scripted != null) {
      throw scripted;
    }
    final payload = script[expectedDataType];
    if (payload == null) {
      return <T>[];
    }
    // The Vendure list envelope: the extracted payload itself IS the list
    // (the source SDK: `if (data is! List) throw; data.map(fromJson)`).
    if (payload is! List<dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON list for '
        '${_describeExpectedType(expectedDataType)}, '
        'got ${payload.runtimeType}',
      );
    }
    final decode = fromJson;
    if (decode == null) {
      // Scalar list (e.g. nextOrderStates): the raw elements are T.
      return List<T>.from(payload);
    }
    return payload
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
    required String? expectedDataType,
  }) async {
    requests.add(
      VendureRequestRecord(
        document: document,
        variables: variables,
        headers: headers,
        isMutation: true,
        expectedDataType: expectedDataType,
      ),
    );
    final scripted = error;
    if (scripted != null) {
      throw scripted;
    }
    final payload = script[expectedDataType];
    // The auth seam's contract: the session token rides the response
    // header, so an UNscripted expectedDataType key (the body-irrelevant
    // case — a server that answers the mutation with only __typename)
    // resolves to null data, not a decode of the empty-map default.
    if (payload == null) {
      return VendureResponse<T>(null, Map<String, String>.of(responseHeaders));
    }
    if (payload is! Map<String, dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON object for '
        '${_describeExpectedType(expectedDataType)}, '
        'got ${payload.runtimeType}',
      );
    }
    final normalized = VendureUtils.normalizeGraphQLData(
      Map<String, dynamic>.from(payload),
      convertEnums: false,
    );
    return VendureResponse<T>(
      fromJson(normalized as Map<String, dynamic>),
      Map<String, String>.of(responseHeaders),
    );
  }

  /// How a failure message names the expected data type — null (the
  /// tolerant default, zuraffa_vendure#17) reads as what it is, not as a
  /// type called "null".
  static String _describeExpectedType(String? expectedDataType) =>
      expectedDataType ?? 'the whole envelope';

  /// The headers every [mutateWithHeaders] response carries — the scripted
  /// stand-in for the HTTP response headers (the auth token header). Tests
  /// seed it: `adapter.responseHeaders['vendure-auth-token'] = token;`.
  final Map<String, String> responseHeaders = {};

  /// The scripted subscription events, in emission order. A subscription
  /// with no script emits nothing (the stream stays open — the real
  /// transport's shape).
  final List<Map<String, dynamic>> subscriptionEvents = [];

  @override
  Stream<T> subscribe<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required T Function(Map<String, dynamic> json) fromJson,
    required String? expectedDataType,
  }) async* {
    requests.add(
      VendureRequestRecord(
        document: document,
        variables: variables,
        headers: headers,
        isMutation: false,
        expectedDataType: expectedDataType,
      ),
    );
    final scripted = error;
    if (scripted != null) {
      throw scripted;
    }
    for (final event in subscriptionEvents) {
      final payload = event[expectedDataType];
      if (payload is Map<String, dynamic>) {
        yield fromJson(payload);
      }
    }
  }
}
