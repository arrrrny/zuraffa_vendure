// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'number_list_operators.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class NumberListOperators {
  NumberListOperators({required double this.inList});

  factory NumberListOperators.fromJson(Map<String, dynamic> json) =>
      _$NumberListOperatorsFromJson(json);

  final double inList;

  NumberListOperators copyWith({double? inList}) {
    return NumberListOperators(inList: inList ?? this.inList);
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  NumberListOperators copyWithField<T>(
    Field<NumberListOperators, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'inList':
        return copyWith(inList: value as double);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'NumberListOperators has no settable field with this name',
        );
    }
  }

  NumberListOperators copyWithNumberListOperators({double? inList}) {
    return copyWith(inList: inList);
  }

  NumberListOperators patchWithNumberListOperators([
    NumberListOperatorsPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? NumberListOperatorsPatch();
    final _patchMap = _patcher.patchMap;
    return NumberListOperators(
      inList: _patchMap.containsKey(NumberListOperators$.inList)
          ? ((_patchMap[NumberListOperators$.inList] is Function)
                    ? _patchMap[NumberListOperators$.inList](this.inList)
                    : (_patchMap[NumberListOperators$.inList] is Patch)
                    ? _patchMap[NumberListOperators$.inList].applyTo(
                        this.inList,
                      )
                    : _patchMap[NumberListOperators$.inList])
                as double
          : this.inList,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NumberListOperators && inList == other.inList;
  }

  @override
  int get hashCode {
    return Object.hash(inList, 0);
  }

  @override
  String toString() {
    return 'NumberListOperators(' + 'inList: ${inList})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$NumberListOperatorsToJson(this);
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

extension NumberListOperatorsPropertyHelpers on NumberListOperators {}

extension NumberListOperatorsSerialization on NumberListOperators {
  Map<String, dynamic> toJson() {
    return _$NumberListOperatorsToJson(this);
  }
}

enum NumberListOperators$ { inList }

class NumberListOperatorsPatch
    extends PatchBase<NumberListOperators, NumberListOperators$> {
  NumberListOperators applyTo(NumberListOperators entity) {
    return entity.patchWithNumberListOperators(this);
  }

  NumberListOperatorsPatch withInList(double? value) {
    patchMap[NumberListOperators$.inList] = value;
    return this;
  }
}

/// Field descriptors for [NumberListOperators] query construction
abstract final class NumberListOperatorsFields {
  static const inList = Field<NumberListOperators, double>('inList', _$inList);

  static double _$inList(NumberListOperators e) {
    return e.inList;
  }
}

extension NumberListOperatorsCompareE on NumberListOperators {
  Map<String, dynamic> compareToNumberListOperators(NumberListOperators other) {
    final Map<String, dynamic> diff = {};

    if (inList != other.inList) {
      diff['inList'] = () => other.inList;
    }
    return diff;
  }
}
