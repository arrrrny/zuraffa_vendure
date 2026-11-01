// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'facet_value_result.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class FacetValueResult {
  FacetValueResult({
    required int this.count,
    required FacetValue this.facetValue,
  });

  factory FacetValueResult.fromJson(Map<String, dynamic> json) =>
      _$FacetValueResultFromJson(json);

  final int count;

  final FacetValue facetValue;

  FacetValueResult copyWith({int? count, FacetValue? facetValue}) {
    return FacetValueResult(
      count: count ?? this.count,
      facetValue: facetValue ?? this.facetValue,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  FacetValueResult copyWithField<T>(Field<FacetValueResult, T> field, T value) {
    switch (field.name) {
      case 'count':
        return copyWith(count: value as int);
      case 'facetValue':
        return copyWith(facetValue: value as FacetValue);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'FacetValueResult has no settable field with this name',
        );
    }
  }

  FacetValueResult copyWithFacetValueResult({
    int? count,
    FacetValue? facetValue,
  }) {
    return copyWith(count: count, facetValue: facetValue);
  }

  FacetValueResult patchWithFacetValueResult([
    FacetValueResultPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? FacetValueResultPatch();
    final _patchMap = _patcher.patchMap;
    return FacetValueResult(
      count: _patchMap.containsKey(FacetValueResult$.count)
          ? ((_patchMap[FacetValueResult$.count] is Function)
                    ? _patchMap[FacetValueResult$.count](this.count)
                    : (_patchMap[FacetValueResult$.count] is Patch)
                    ? _patchMap[FacetValueResult$.count].applyTo(this.count)
                    : _patchMap[FacetValueResult$.count])
                as int
          : this.count,
      facetValue: _patchMap.containsKey(FacetValueResult$.facetValue)
          ? ((_patchMap[FacetValueResult$.facetValue] is Function)
                    ? _patchMap[FacetValueResult$.facetValue](this.facetValue)
                    : (_patchMap[FacetValueResult$.facetValue] is Patch)
                    ? _patchMap[FacetValueResult$.facetValue].applyTo(
                        this.facetValue,
                      )
                    : _patchMap[FacetValueResult$.facetValue])
                as FacetValue
          : this.facetValue,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FacetValueResult &&
        count == other.count &&
        facetValue == other.facetValue;
  }

  @override
  int get hashCode {
    return Object.hash(this.count, this.facetValue);
  }

  @override
  String toString() {
    return 'FacetValueResult(' +
        'count: ${count}' +
        ', ' +
        'facetValue: ${facetValue})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$FacetValueResultToJson(this);
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

extension FacetValueResultPropertyHelpers on FacetValueResult {}

extension FacetValueResultSerialization on FacetValueResult {
  Map<String, dynamic> toJson() {
    return _$FacetValueResultToJson(this);
  }
}

enum FacetValueResult$ { count, facetValue }

class FacetValueResultPatch
    extends PatchBase<FacetValueResult, FacetValueResult$> {
  FacetValueResult applyTo(FacetValueResult entity) {
    return entity.patchWithFacetValueResult(this);
  }

  FacetValueResultPatch withCount(int? value) {
    patchMap[FacetValueResult$.count] = value;
    return this;
  }

  FacetValueResultPatch withFacetValue(FacetValue? value) {
    patchMap[FacetValueResult$.facetValue] = value;
    return this;
  }

  FacetValueResultPatch withFacetValuePatch(FacetValuePatch patch) {
    patchMap[FacetValueResult$.facetValue] = patch;
    return this;
  }

  FacetValueResultPatch withFacetValuePatchFunc(
    FacetValuePatch Function(FacetValuePatch) patch,
  ) {
    patchMap[FacetValueResult$.facetValue] = (dynamic current) {
      var currentPatch = FacetValuePatch();
      return patch(currentPatch).applyTo(current as FacetValue);
    };
    return this;
  }
}

/// Field descriptors for [FacetValueResult] query construction
abstract final class FacetValueResultFields {
  static const count = Field<FacetValueResult, int>('count', _$count);

  static const facetValue = Field<FacetValueResult, FacetValue>(
    'facetValue',
    _$facetValue,
  );

  static int _$count(FacetValueResult e) {
    return e.count;
  }

  static FacetValue _$facetValue(FacetValueResult e) {
    return e.facetValue;
  }
}

extension FacetValueResultCompareE on FacetValueResult {
  Map<String, dynamic> compareToFacetValueResult(FacetValueResult other) {
    final Map<String, dynamic> diff = {};

    if (count != other.count) {
      diff['count'] = () => other.count;
    }

    if (facetValue != other.facetValue) {
      diff['facetValue'] = () => other.facetValue;
    }
    return diff;
  }
}
