// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'string_list_operators.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class StringListOperators {
  StringListOperators({required String this.inList});

  factory StringListOperators.fromJson(Map<String, dynamic> json) =>
      _$StringListOperatorsFromJson(json);

  final String inList;

  StringListOperators copyWith({String? inList}) {
    return StringListOperators(inList: inList ?? this.inList);
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  StringListOperators copyWithField<T>(
    Field<StringListOperators, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'inList':
        return copyWith(inList: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'StringListOperators has no settable field with this name',
        );
    }
  }

  StringListOperators copyWithStringListOperators({String? inList}) {
    return copyWith(inList: inList);
  }

  StringListOperators patchWithStringListOperators([
    StringListOperatorsPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? StringListOperatorsPatch();
    final _patchMap = _patcher.patchMap;
    return StringListOperators(
      inList: _patchMap.containsKey(StringListOperators$.inList)
          ? ((_patchMap[StringListOperators$.inList] is Function)
                    ? _patchMap[StringListOperators$.inList](this.inList)
                    : (_patchMap[StringListOperators$.inList] is Patch)
                    ? _patchMap[StringListOperators$.inList].applyTo(
                        this.inList,
                      )
                    : _patchMap[StringListOperators$.inList])
                as String
          : this.inList,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StringListOperators && inList == other.inList;
  }

  @override
  int get hashCode {
    return Object.hash(inList, 0);
  }

  @override
  String toString() {
    return 'StringListOperators(' + 'inList: ${inList})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$StringListOperatorsToJson(this);
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

extension StringListOperatorsPropertyHelpers on StringListOperators {
  bool get hasInList {
    return this.inList.isNotEmpty;
  }

  bool get noInList {
    return this.inList.isEmpty;
  }
}

extension StringListOperatorsSerialization on StringListOperators {
  Map<String, dynamic> toJson() {
    return _$StringListOperatorsToJson(this);
  }
}

enum StringListOperators$ { inList }

class StringListOperatorsPatch
    extends PatchBase<StringListOperators, StringListOperators$> {
  StringListOperators applyTo(StringListOperators entity) {
    return entity.patchWithStringListOperators(this);
  }

  StringListOperatorsPatch withInList(String? value) {
    patchMap[StringListOperators$.inList] = value;
    return this;
  }
}

/// Field descriptors for [StringListOperators] query construction
abstract final class StringListOperatorsFields {
  static const inList = Field<StringListOperators, String>('inList', _$inList);

  static String _$inList(StringListOperators e) {
    return e.inList;
  }
}

extension StringListOperatorsCompareE on StringListOperators {
  Map<String, dynamic> compareToStringListOperators(StringListOperators other) {
    final Map<String, dynamic> diff = {};

    if (inList != other.inList) {
      diff['inList'] = () => other.inList;
    }
    return diff;
  }
}
