import '../datasources/vendure_datasource.dart';
import '../../vendure/vendure_utils.dart';

/// A page of results from a Vendure list query — the `items`/`totalItems`
/// pair every list operation returns (ported from the source SDK's
/// `PaginatedList`).
abstract interface class PaginatedList<T> {
  List<T> get items;
  int get totalItems;
}

class PaginatedListImpl<T> implements PaginatedList<T> {
  const PaginatedListImpl({required this.items, required this.totalItems});

  @override
  final List<T> items;
  @override
  final int totalItems;
}

/// The list-options vocabulary every Vendure list query shares: filter,
/// sort, and pagination (skip/take). Serialized onto the wire as the
/// `options` variable.
class ListOptions {
  const ListOptions({this.skip, this.take, this.sort, this.filter});

  final int? skip;
  final int? take;
  final dynamic sort;
  final dynamic filter;

  Map<String, dynamic> toJson() => {
    if (skip != null) 'skip': skip,
    if (take != null) 'take': take,
    if (sort != null) 'sort': _serialize(sort),
    if (filter != null) 'filter': _serialize(filter),
  };

  static dynamic _serialize(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is Map) {
      return value;
    }
    try {
      return value.toJson();
    } catch (_) {
      return value;
    }
  }
}

/// Direct access to the underlying GraphQL seam — the escape hatch the
/// facade contract pins for operations the convenience groups don't cover.
///
/// Rides the same [VendureDataSource] port as every other operation (the
/// source SDK built a second datasource here; this reimplementation wires
/// the facade's one datasource through, so custom operations share the
/// context, the error path, and the retry policy).
class CustomOperations {
  CustomOperations(this._dataSource);

  final VendureDataSource _dataSource;

  /// The underlying port, for advanced callers.
  VendureDataSource get dataSource => _dataSource;

  /// Executes a raw mutation document.
  ///
  /// [expectedDataType] is optional and defaults to the document's own root
  /// field (zuraffa_vendure#17): the client has already unwrapped the
  /// top-level `data` envelope, so the old `'data'` default named a key that
  /// cannot exist and every caller who omitted the parameter threw on a
  /// SUCCESSFUL response. Pass the root field name explicitly for a document
  /// that selects more than one.
  Future<T> mutate<T>(
    String mutation,
    Map<String, dynamic> variables, {
    T Function(Map<String, dynamic>)? fromJson,
    String? expectedDataType,
    bool convertEnums = true,
  }) {
    return _dataSource.mutate<T>(
      VendureUtils.replaceCustomFieldsFragment(mutation, const {}),
      variables: _normalize(variables, convertEnums),
      headers: const {},
      fromJson: fromJson,
      expectedDataType: expectedDataType,
    );
  }

  /// Executes a raw query document — [expectedDataType] defaults to the
  /// document's root field, exactly as [mutate] documents (zuraffa_vendure#17).
  Future<T> query<T>(
    String query,
    Map<String, dynamic> variables, {
    T Function(Map<String, dynamic>)? fromJson,
    String? expectedDataType,
    bool convertEnums = false,
  }) {
    return _dataSource.query<T>(
      query,
      variables: _normalize(variables, convertEnums),
      headers: const {},
      fromJson: fromJson,
      expectedDataType: expectedDataType,
    );
  }

  Future<List<T>> queryList<T>(
    String query,
    Map<String, dynamic> variables, {
    T Function(Map<String, dynamic>)? fromJson,
    String? expectedDataType,
    bool convertEnums = false,
  }) {
    return _dataSource.queryList<T>(
      query,
      variables: _normalize(variables, convertEnums),
      headers: const {},
      fromJson: fromJson,
      expectedDataType: expectedDataType,
    );
  }

  Future<List<T>> mutateList<T>(
    String mutation,
    Map<String, dynamic> variables, {
    T Function(Map<String, dynamic>)? fromJson,
    String? expectedDataType,
    bool convertEnums = true,
  }) {
    // A list mutation decodes through the same list envelope as a list
    // query — the port's queryList carries the decode.
    return _dataSource.queryList<T>(
      mutation,
      variables: _normalize(variables, convertEnums),
      headers: const {},
      fromJson: fromJson,
      expectedDataType: expectedDataType,
    );
  }

  Future<PaginatedList<T>> queryListPaginated<T>(
    String query, {
    required T Function(Map<String, dynamic>) fromJson,
    String? expectedDataType,
    bool convertEnums = false,
    ListOptions? options,
  }) async {
    // fromJson omitted: the port returns the raw extracted envelope and
    // _paginate decodes the items/totalItems pair (ported from the source
    // SDK's CustomOperations.queryListPaginated).
    final data = await _dataSource.query<dynamic>(
      query,
      variables: _withOptions(const {}, options),
      headers: const {},
      expectedDataType: expectedDataType,
    );
    return _paginate<T>(_normalizeEnvelope(data, convertEnums), fromJson);
  }

  Future<PaginatedList<T>> mutateListPaginated<T>(
    String mutation,
    Map<String, dynamic> variables, {
    required T Function(Map<String, dynamic>) fromJson,
    String? expectedDataType,
    bool convertEnums = true,
    ListOptions? options,
  }) async {
    final data = await _dataSource.mutate<dynamic>(
      mutation,
      variables: _normalize(_withOptions(variables, options), convertEnums),
      headers: const {},
      expectedDataType: expectedDataType,
    );
    return _paginate<T>(_normalizeEnvelope(data, convertEnums), fromJson);
  }

  /// The auth seam's header extraction, exposed publicly (the source SDK
  /// kept it on the custom group): executes [operation] and returns the
  /// named HTTP response headers.
  Future<Map<String, String>> extractResponseHeaders(
    String operation,
    Map<String, dynamic> variables,
    List<String> headers, {
    bool convertEnums = true,
  }) async {
    final response = await _dataSource.mutateWithHeaders<dynamic>(
      operation,
      variables: _normalize(variables, convertEnums),
      headers: const {},
      fromJson: _identityAsMap,
      // null, not the retired `'data'`: that name cannot be in any
      // envelope, so the old value only reached the tolerated "absent
      // key" path by accident of the extraction order. The tolerant
      // default is the documented way to say the body is irrelevant on
      // this seam — the session token rides the response HEADER, and only
      // `response.headers` is read below.
      expectedDataType: null,
    );
    final captured = <String, String>{};
    for (final h in headers) {
      final v = response.headers[h];
      if (v != null) {
        captured[h] = v;
      }
    }
    return captured;
  }

  // ---- internals ---------------------------------------------------------

  /// The passthrough decoder for the raw envelope — the auth seam's
  /// [mutateWithHeaders] path needs a non-null fromJson to satisfy the
  /// port's typed decode while returning the envelope map unchanged.
  static Map<String, dynamic> _identityAsMap(Map<String, dynamic> json) =>
      Map<String, dynamic>.from(json);

  static Map<String, dynamic> _normalize(
    Map<String, dynamic> variables,
    bool convertEnums,
  ) {
    if (!convertEnums) {
      return variables;
    }
    return VendureUtils.normalizeMutationData(
      variables,
      convertEnums: convertEnums,
    ) as Map<String, dynamic>;
  }

  /// The paginated envelope's decode preparation — the source SDK's
  /// queryListPaginated/mutateListPaginated contract, restored
  /// (zuraffa_vendure#2, reported from zik_zak#508): gql() injects
  /// __typename into every selection set, and the raw escape hatch above
  /// returns the extracted payload as-is, so __typename keys survive into
  /// entity fromJson. A polymorphic dispatcher (zorphy explicitSubTypes
  /// fromJson — e.g. zik_zak's Listing.fromJson) then throws
  /// UnsupportedError on any server type it doesn't list ('ChannelListing'
  /// for raptorr's Deal.listing). The __typename -> runtimeType conversion
  /// restores the pre-7.x decode; with convertEnums enabled the known-enum
  /// fields also convert to their Dart format, as the source SDK did.
  static dynamic _normalizeEnvelope(dynamic data, bool convertEnums) {
    if (data is Map || data is List) {
      return VendureUtils.normalizeGraphQLData(
        data,
        convertEnums: convertEnums,
      );
    }
    return data;
  }

  static Map<String, dynamic> _withOptions(
    Map<String, dynamic> variables,
    ListOptions? options,
  ) {
    if (options == null) {
      return variables;
    }
    return {...variables, 'options': options.toJson()};
  }

  static PaginatedList<T> _paginate<T>(
    dynamic data,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    if (data == null) {
      throw const VendureDataSourceException(
        'No data returned from paginated operation',
      );
    }
    if (data is! Map<String, dynamic>) {
      throw VendureDataSourceException(
        'Expected a JSON object for the paginated envelope, got ${data.runtimeType}',
      );
    }
    // A multi-field document's WHOLE envelope reaches here when the caller
    // omitted expectedDataType (D6 pins that contract for query/mutate).
    // Without either key there is no page to report: the fallbacks below
    // used to answer `items: [], totalItems: 0` — a page that exists
    // reported as empty, with no error and no log, which is the hardest
    // kind of wrong to notice downstream.
    if (!data.containsKey('items') && !data.containsKey('totalItems')) {
      throw VendureDataSourceException(
        'Paginated envelope has no items/totalItems '
        '(envelope keys: [${data.keys.join(', ')}]); pass expectedDataType '
        'for a multi-field document',
      );
    }
    final items =
        (data['items'] as List?)
            ?.map<T>(
              (item) => fromJson(
                Map<String, dynamic>.from(item as Map<String, dynamic>),
              ),
            )
            .toList() ??
        <T>[];
    final totalItems = (data['totalItems'] as num?)?.toInt() ?? 0;
    return PaginatedListImpl<T>(items: items, totalItems: totalItems);
  }
}
