// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'facet_value_list_options.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class FacetValueListOptions {
  FacetValueListOptions({
    FacetValueFilterParameter? this.filter,
    LogicalOperator? this.filterOperator,
    int? this.skip,
    FacetValueSortParameter? this.sort,
    int? this.take,
  });

  factory FacetValueListOptions.fromJson(Map<String, dynamic> json) =>
      _$FacetValueListOptionsFromJson(json);

  final FacetValueFilterParameter? filter;

  final LogicalOperator? filterOperator;

  final int? skip;

  final FacetValueSortParameter? sort;

  final int? take;

  FacetValueListOptions copyWith({
    FacetValueFilterParameter? filter,
    LogicalOperator? filterOperator,
    int? skip,
    FacetValueSortParameter? sort,
    int? take,
  }) {
    return FacetValueListOptions(
      filter: filter ?? this.filter,
      filterOperator: filterOperator ?? this.filterOperator,
      skip: skip ?? this.skip,
      sort: sort ?? this.sort,
      take: take ?? this.take,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  FacetValueListOptions copyWithField<T>(
    Field<FacetValueListOptions, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'filter':
        return copyWith(filter: value as FacetValueFilterParameter?);
      case 'filterOperator':
        return copyWith(filterOperator: value as LogicalOperator?);
      case 'skip':
        return copyWith(skip: value as int?);
      case 'sort':
        return copyWith(sort: value as FacetValueSortParameter?);
      case 'take':
        return copyWith(take: value as int?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'FacetValueListOptions has no settable field with this name',
        );
    }
  }

  FacetValueListOptions copyWithFacetValueListOptions({
    FacetValueFilterParameter? filter,
    LogicalOperator? filterOperator,
    int? skip,
    FacetValueSortParameter? sort,
    int? take,
  }) {
    return copyWith(
      filter: filter,
      filterOperator: filterOperator,
      skip: skip,
      sort: sort,
      take: take,
    );
  }

  FacetValueListOptions patchWithFacetValueListOptions([
    FacetValueListOptionsPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? FacetValueListOptionsPatch();
    final _patchMap = _patcher.patchMap;
    return FacetValueListOptions(
      filter: _patchMap.containsKey(FacetValueListOptions$.filter)
          ? ((_patchMap[FacetValueListOptions$.filter] is Function)
                    ? _patchMap[FacetValueListOptions$.filter](this.filter)
                    : (_patchMap[FacetValueListOptions$.filter] is Patch)
                    ? _patchMap[FacetValueListOptions$.filter].applyTo(
                        this.filter,
                      )
                    : _patchMap[FacetValueListOptions$.filter])
                as FacetValueFilterParameter?
          : this.filter,
      filterOperator:
          _patchMap.containsKey(FacetValueListOptions$.filterOperator)
          ? ((_patchMap[FacetValueListOptions$.filterOperator] is Function)
                    ? _patchMap[FacetValueListOptions$.filterOperator](
                        this.filterOperator,
                      )
                    : (_patchMap[FacetValueListOptions$.filterOperator]
                          is Patch)
                    ? _patchMap[FacetValueListOptions$.filterOperator].applyTo(
                        this.filterOperator,
                      )
                    : _patchMap[FacetValueListOptions$.filterOperator])
                as LogicalOperator?
          : this.filterOperator,
      skip: _patchMap.containsKey(FacetValueListOptions$.skip)
          ? ((_patchMap[FacetValueListOptions$.skip] is Function)
                    ? _patchMap[FacetValueListOptions$.skip](this.skip)
                    : (_patchMap[FacetValueListOptions$.skip] is Patch)
                    ? _patchMap[FacetValueListOptions$.skip].applyTo(this.skip)
                    : _patchMap[FacetValueListOptions$.skip])
                as int?
          : this.skip,
      sort: _patchMap.containsKey(FacetValueListOptions$.sort)
          ? ((_patchMap[FacetValueListOptions$.sort] is Function)
                    ? _patchMap[FacetValueListOptions$.sort](this.sort)
                    : (_patchMap[FacetValueListOptions$.sort] is Patch)
                    ? _patchMap[FacetValueListOptions$.sort].applyTo(this.sort)
                    : _patchMap[FacetValueListOptions$.sort])
                as FacetValueSortParameter?
          : this.sort,
      take: _patchMap.containsKey(FacetValueListOptions$.take)
          ? ((_patchMap[FacetValueListOptions$.take] is Function)
                    ? _patchMap[FacetValueListOptions$.take](this.take)
                    : (_patchMap[FacetValueListOptions$.take] is Patch)
                    ? _patchMap[FacetValueListOptions$.take].applyTo(this.take)
                    : _patchMap[FacetValueListOptions$.take])
                as int?
          : this.take,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FacetValueListOptions &&
        filter == other.filter &&
        filterOperator == other.filterOperator &&
        skip == other.skip &&
        sort == other.sort &&
        take == other.take;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.filter,
      this.filterOperator,
      this.skip,
      this.sort,
      this.take,
    );
  }

  @override
  String toString() {
    return 'FacetValueListOptions(' +
        'filter: ${filter}' +
        ', ' +
        'filterOperator: ${filterOperator}' +
        ', ' +
        'skip: ${skip}' +
        ', ' +
        'sort: ${sort}' +
        ', ' +
        'take: ${take})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$FacetValueListOptionsToJson(this);
    _sanitizeJson(data);
    return data;
  }

  dynamic _sanitizeJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      json.remove('__typename');
      return json..forEach((key, value) {
        json[key] = _sanitizeJson(value);
      });
    } else if (json is List) {
      return json.map((e) => _sanitizeJson(e)).toList();
    }
    return json;
  }
}

extension FacetValueListOptionsPropertyHelpers on FacetValueListOptions {
  bool get hasFilter {
    return this.filter != null;
  }

  bool get noFilter {
    return this.filter == null;
  }

  FacetValueFilterParameter get filterRequired {
    return this.filter ?? (throw StateError('filter is required but was null'));
  }

  bool get hasFilterOperator {
    return this.filterOperator != null;
  }

  bool get noFilterOperator {
    return this.filterOperator == null;
  }

  LogicalOperator get filterOperatorRequired {
    return this.filterOperator ??
        (throw StateError('filterOperator is required but was null'));
  }

  bool get isFilterOperatorAnd {
    return this.filterOperator == LogicalOperator.and;
  }

  bool get isFilterOperatorOr {
    return this.filterOperator == LogicalOperator.or;
  }

  bool get hasSkip {
    return this.skip != null;
  }

  bool get noSkip {
    return this.skip == null;
  }

  int get skipRequired {
    return this.skip ?? (throw StateError('skip is required but was null'));
  }

  bool get hasSort {
    return this.sort != null;
  }

  bool get noSort {
    return this.sort == null;
  }

  FacetValueSortParameter get sortRequired {
    return this.sort ?? (throw StateError('sort is required but was null'));
  }

  bool get hasTake {
    return this.take != null;
  }

  bool get noTake {
    return this.take == null;
  }

  int get takeRequired {
    return this.take ?? (throw StateError('take is required but was null'));
  }
}

extension FacetValueListOptionsSerialization on FacetValueListOptions {
  Map<String, dynamic> toJson() {
    return _$FacetValueListOptionsToJson(this);
  }
}

enum FacetValueListOptions$ { filter, filterOperator, skip, sort, take }

class FacetValueListOptionsPatch
    extends PatchBase<FacetValueListOptions, FacetValueListOptions$> {
  FacetValueListOptions applyTo(FacetValueListOptions entity) {
    return entity.patchWithFacetValueListOptions(this);
  }

  FacetValueListOptionsPatch withFilter(FacetValueFilterParameter? value) {
    patchMap[FacetValueListOptions$.filter] = value;
    return this;
  }

  FacetValueListOptionsPatch withFilterPatch(
    FacetValueFilterParameterPatch patch,
  ) {
    patchMap[FacetValueListOptions$.filter] = patch;
    return this;
  }

  FacetValueListOptionsPatch withFilterPatchFunc(
    FacetValueFilterParameterPatch Function(FacetValueFilterParameterPatch)
    patch,
  ) {
    patchMap[FacetValueListOptions$.filter] = (dynamic current) {
      var currentPatch = FacetValueFilterParameterPatch();
      return patch(currentPatch).applyTo(current as FacetValueFilterParameter);
    };
    return this;
  }

  FacetValueListOptionsPatch withFilterOperator(LogicalOperator? value) {
    patchMap[FacetValueListOptions$.filterOperator] = value;
    return this;
  }

  FacetValueListOptionsPatch withSkip(int? value) {
    patchMap[FacetValueListOptions$.skip] = value;
    return this;
  }

  FacetValueListOptionsPatch withSort(FacetValueSortParameter? value) {
    patchMap[FacetValueListOptions$.sort] = value;
    return this;
  }

  FacetValueListOptionsPatch withSortPatch(FacetValueSortParameterPatch patch) {
    patchMap[FacetValueListOptions$.sort] = patch;
    return this;
  }

  FacetValueListOptionsPatch withSortPatchFunc(
    FacetValueSortParameterPatch Function(FacetValueSortParameterPatch) patch,
  ) {
    patchMap[FacetValueListOptions$.sort] = (dynamic current) {
      var currentPatch = FacetValueSortParameterPatch();
      return patch(currentPatch).applyTo(current as FacetValueSortParameter);
    };
    return this;
  }

  FacetValueListOptionsPatch withTake(int? value) {
    patchMap[FacetValueListOptions$.take] = value;
    return this;
  }
}

/// Field descriptors for [FacetValueListOptions] query construction
abstract final class FacetValueListOptionsFields {
  static const filter =
      Field<FacetValueListOptions, FacetValueFilterParameter?>(
        'filter',
        _$filter,
      );

  static const filterOperator = Field<FacetValueListOptions, LogicalOperator?>(
    'filterOperator',
    _$filterOperator,
  );

  static const skip = Field<FacetValueListOptions, int?>('skip', _$skip);

  static const sort = Field<FacetValueListOptions, FacetValueSortParameter?>(
    'sort',
    _$sort,
  );

  static const take = Field<FacetValueListOptions, int?>('take', _$take);

  static FacetValueFilterParameter? _$filter(FacetValueListOptions e) {
    return e.filter;
  }

  static LogicalOperator? _$filterOperator(FacetValueListOptions e) {
    return e.filterOperator;
  }

  static int? _$skip(FacetValueListOptions e) {
    return e.skip;
  }

  static FacetValueSortParameter? _$sort(FacetValueListOptions e) {
    return e.sort;
  }

  static int? _$take(FacetValueListOptions e) {
    return e.take;
  }
}

extension FacetValueListOptionsCompareE on FacetValueListOptions {
  Map<String, dynamic> compareToFacetValueListOptions(
    FacetValueListOptions other,
  ) {
    final Map<String, dynamic> diff = {};

    if (filter != other.filter) {
      diff['filter'] = () => other.filter;
    }

    if (filterOperator != other.filterOperator) {
      diff['filterOperator'] = () => other.filterOperator;
    }

    if (skip != other.skip) {
      diff['skip'] = () => other.skip;
    }

    if (sort != other.sort) {
      diff['sort'] = () => other.sort;
    }

    if (take != other.take) {
      diff['take'] = () => other.take;
    }
    return diff;
  }
}
