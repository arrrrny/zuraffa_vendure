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
      fromJson: fromJson ?? (_identity as T Function(Map<String, dynamic>)),
      expectedDataType: expectedDataType ?? 'data',
    );
  }

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
      fromJson: fromJson ?? (_identity as T Function(Map<String, dynamic>)),
      expectedDataType: expectedDataType ?? 'data',
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
      expectedDataType: expectedDataType ?? 'data',
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
      expectedDataType: expectedDataType ?? 'data',
    );
  }

  Future<PaginatedList<T>> queryListPaginated<T>(
    String query, {
    required T Function(Map<String, dynamic>) fromJson,
    String? expectedDataType,
    bool convertEnums = false,
    ListOptions? options,
  }) async {
    final data = await _dataSource.query<dynamic>(
      query,
      variables: _withOptions(const {}, options),
      headers: const {},
      fromJson: _identity as dynamic Function(Map<String, dynamic>),
      expectedDataType: expectedDataType ?? 'data',
    );
    return _paginate<T>(data, fromJson);
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
      fromJson: _identity as dynamic Function(Map<String, dynamic>),
      expectedDataType: expectedDataType ?? 'data',
    );
    return _paginate<T>(data, fromJson);
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
      fromJson: _identity as dynamic Function(Map<String, dynamic>),
      expectedDataType: 'data',
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

  static dynamic _identity(dynamic json) => json;

  static Map<String, dynamic> _normalize(
    Map<String, dynamic> variables,
    bool convertEnums,
  ) {
    if (!convertEnums) {
      return variables;
    }
    return VendureUtils.normalizeMutationData(variables)
        as Map<String, dynamic>;
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
