// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'search_reindex_response.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class SearchReindexResponse {
  SearchReindexResponse({required bool this.success});

  factory SearchReindexResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchReindexResponseFromJson(json);

  final bool success;

  SearchReindexResponse copyWith({bool? success}) {
    return SearchReindexResponse(success: success ?? this.success);
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  SearchReindexResponse copyWithField<T>(
    Field<SearchReindexResponse, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'success':
        return copyWith(success: value as bool);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'SearchReindexResponse has no settable field with this name',
        );
    }
  }

  SearchReindexResponse copyWithSearchReindexResponse({bool? success}) {
    return copyWith(success: success);
  }

  SearchReindexResponse patchWithSearchReindexResponse([
    SearchReindexResponsePatch? patchInput,
  ]) {
    final _patcher = patchInput ?? SearchReindexResponsePatch();
    final _patchMap = _patcher.patchMap;
    return SearchReindexResponse(
      success: _patchMap.containsKey(SearchReindexResponse$.success)
          ? ((_patchMap[SearchReindexResponse$.success] is Function)
                    ? _patchMap[SearchReindexResponse$.success](this.success)
                    : (_patchMap[SearchReindexResponse$.success] is Patch)
                    ? _patchMap[SearchReindexResponse$.success].applyTo(
                        this.success,
                      )
                    : _patchMap[SearchReindexResponse$.success])
                as bool
          : this.success,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SearchReindexResponse && success == other.success;
  }

  @override
  int get hashCode {
    return Object.hash(success, 0);
  }

  @override
  String toString() {
    return 'SearchReindexResponse(' + 'success: ${success})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$SearchReindexResponseToJson(this);
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

extension SearchReindexResponsePropertyHelpers on SearchReindexResponse {}

extension SearchReindexResponseSerialization on SearchReindexResponse {
  Map<String, dynamic> toJson() {
    return _$SearchReindexResponseToJson(this);
  }
}

enum SearchReindexResponse$ { success }

class SearchReindexResponsePatch
    extends PatchBase<SearchReindexResponse, SearchReindexResponse$> {
  SearchReindexResponse applyTo(SearchReindexResponse entity) {
    return entity.patchWithSearchReindexResponse(this);
  }

  SearchReindexResponsePatch withSuccess(bool? value) {
    patchMap[SearchReindexResponse$.success] = value;
    return this;
  }
}

/// Field descriptors for [SearchReindexResponse] query construction
abstract final class SearchReindexResponseFields {
  static const success = Field<SearchReindexResponse, bool>(
    'success',
    _$success,
  );

  static bool _$success(SearchReindexResponse e) {
    return e.success;
  }
}

extension SearchReindexResponseCompareE on SearchReindexResponse {
  Map<String, dynamic> compareToSearchReindexResponse(
    SearchReindexResponse other,
  ) {
    final Map<String, dynamic> diff = {};

    if (success != other.success) {
      diff['success'] = () => other.success;
    }
    return diff;
  }
}
