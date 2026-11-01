import '../../../domain/datasources/vendure_datasource.dart';

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
  final String expectedDataType;
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
  /// declares via [expectedDataType]. A miss resolves to an empty map —
  /// the shape a real endpoint returns for an operation with no data.
  final Map<String, Map<String, dynamic>> script;

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
    required T Function(Map<String, dynamic> json) fromJson,
    required String expectedDataType,
  }) async {
    return _execute(
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
    required T Function(Map<String, dynamic> json) fromJson,
    required String expectedDataType,
  }) async {
    return _execute(
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
    String expectedDataType, {
    required bool isMutation,
    required T Function(Map<String, dynamic> json) fromJson,
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
    return fromJson(payload);
  }
}
