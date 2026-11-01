/// The outbound Vendure seam: one interface between the repositories and
/// whatever executes a GraphQL document against a Vendure shop-api
/// endpoint (the [GraphQL VendureDataSource adapter] on a device, the
/// pure-Dart [InMemoryVendureDataSource] in tests and dev).
///
/// The datasource pattern applied to the Vendure SDK — repositories build
/// documents and decode entities through this contract and stay oblivious
/// to how the HTTP transport hands the data over (spec 001: the reimplemented
/// `vendure` SDK on the Zuraffa stack).
///
/// One error path: transport failures, GraphQL errors, and unexpected
/// payload shapes surface as [VendureDataSourceException] (or a subtype);
/// no raw exception escapes the port to callers.
abstract class VendureDataSource {
  /// Executes a GraphQL query document with [variables] and [headers],
  /// returning the decoded [T] extracted from the response's [expectedDataType]
  /// key (the Vendure response envelope: `{data: {<expectedDataType>: …}}`).
  ///
  /// [fromJson] is optional: when omitted the extracted payload is returned
  /// as-is (the raw escape hatch the custom operations ride — T may be a
  /// scalar, a Map, or a List).
  Future<T> query<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
  });

  /// Executes a GraphQL mutation document — same envelope and error path
  /// as [query].
  ///
  /// [fromJson] is optional (see [query]).
  Future<T> mutate<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
  });

  /// Executes a query whose expected data type is a LIST (the Vendure list
  /// envelope: `{data: {<expectedDataType>: […]}}` — the extracted payload
  /// itself is the list), decoding each element with [fromJson].
  ///
  /// [fromJson] is optional: when omitted the raw elements are cast to T
  /// (scalar lists such as `nextOrderStates`).
  Future<List<T>> queryList<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    T Function(Map<String, dynamic> json)? fromJson,
    required String expectedDataType,
  });

  /// Executes a mutation and returns the decoded data TOGETHER with the
  /// HTTP response headers — the auth seam needs this: the Vendure session
  /// token rides the `vendure-auth-token` response header, not the body.
  Future<VendureResponse<T>> mutateWithHeaders<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required T Function(Map<String, dynamic> json) fromJson,
    required String expectedDataType,
  });

  /// Subscribes to a GraphQL subscription document — a stream of decoded
  /// [T] events (the Vendure live streams: `activeCustomerStream`, …).
  /// The transport owns the WebSocket lifecycle.
  Stream<T> subscribe<T>(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required T Function(Map<String, dynamic> json) fromJson,
    required String expectedDataType,
  });
}

/// The port's single error type: everything the transport can produce —
/// connection failures, timeouts, GraphQL error payloads, malformed
/// responses — resolves to one [VendureDataSourceException] (or a subtype)
/// so callers own one error path.
class VendureDataSourceException implements Exception {
  const VendureDataSourceException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'VendureDataSourceException: $message';
}

/// A mutation result that carries the HTTP response headers alongside the
/// decoded data — the Vendure session token rides a response header
/// (`vendure-auth-token`), not the body, so the auth repository needs the
/// headers to capture it (ported from the source SDK's
/// `AuthBaseOperations.extractResponseHeaders`).
class VendureResponse<T> {
  const VendureResponse(this.data, this.headers);

  final T data;
  final Map<String, String> headers;
}

/// The raw escape hatch the custom operations ride: execute a document
/// and get the UNTYPED extracted payload (the caller supplies no decoder).
/// Same envelope and error path as [VendureDataSource.query].
abstract class VendureRawDataSource implements VendureDataSource {
  /// Executes [document] and returns the extracted payload as-is
  /// (no typed decode) — the custom operations' escape hatch.
  Future<dynamic> executeRaw(
    String document, {
    required Map<String, dynamic> variables,
    required Map<String, String> headers,
    required String expectedDataType,
    required bool isMutation,
  });
}
