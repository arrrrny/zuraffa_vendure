// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'config_arg_input.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ConfigArgInput {
  ConfigArgInput({required String this.name, required String this.value});

  factory ConfigArgInput.fromJson(Map<String, dynamic> json) =>
      _$ConfigArgInputFromJson(json);

  final String name;

  final String value;

  ConfigArgInput copyWith({String? name, String? value}) {
    return ConfigArgInput(name: name ?? this.name, value: value ?? this.value);
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ConfigArgInput copyWithField<T>(Field<ConfigArgInput, T> field, T value) {
    switch (field.name) {
      case 'name':
        return copyWith(name: value as String);
      case 'value':
        return copyWith(value: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ConfigArgInput has no settable field with this name',
        );
    }
  }

  ConfigArgInput copyWithConfigArgInput({String? name, String? value}) {
    return copyWith(name: name, value: value);
  }

  ConfigArgInput patchWithConfigArgInput([ConfigArgInputPatch? patchInput]) {
    final _patcher = patchInput ?? ConfigArgInputPatch();
    final _patchMap = _patcher.patchMap;
    return ConfigArgInput(
      name: _patchMap.containsKey(ConfigArgInput$.name_)
          ? ((_patchMap[ConfigArgInput$.name_] is Function)
                    ? _patchMap[ConfigArgInput$.name_](this.name)
                    : (_patchMap[ConfigArgInput$.name_] is Patch)
                    ? _patchMap[ConfigArgInput$.name_].applyTo(this.name)
                    : _patchMap[ConfigArgInput$.name_])
                as String
          : this.name,
      value: _patchMap.containsKey(ConfigArgInput$.value)
          ? ((_patchMap[ConfigArgInput$.value] is Function)
                    ? _patchMap[ConfigArgInput$.value](this.value)
                    : (_patchMap[ConfigArgInput$.value] is Patch)
                    ? _patchMap[ConfigArgInput$.value].applyTo(this.value)
                    : _patchMap[ConfigArgInput$.value])
                as String
          : this.value,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ConfigArgInput &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode {
    return Object.hash(this.name, this.value);
  }

  @override
  String toString() {
    return 'ConfigArgInput(' + 'name: ${name}' + ', ' + 'value: ${value})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ConfigArgInputToJson(this);
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

extension ConfigArgInputPropertyHelpers on ConfigArgInput {
  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }

  bool get hasValue {
    return this.value.isNotEmpty;
  }

  bool get noValue {
    return this.value.isEmpty;
  }
}

extension ConfigArgInputSerialization on ConfigArgInput {
  Map<String, dynamic> toJson() {
    return _$ConfigArgInputToJson(this);
  }
}

enum ConfigArgInput$ { name_, value }

class ConfigArgInputPatch extends PatchBase<ConfigArgInput, ConfigArgInput$> {
  ConfigArgInput applyTo(ConfigArgInput entity) {
    return entity.patchWithConfigArgInput(this);
  }

  ConfigArgInputPatch withName(String? value) {
    patchMap[ConfigArgInput$.name_] = value;
    return this;
  }

  ConfigArgInputPatch withValue(String? value) {
    patchMap[ConfigArgInput$.value] = value;
    return this;
  }
}

/// Field descriptors for [ConfigArgInput] query construction
abstract final class ConfigArgInputFields {
  static const name = Field<ConfigArgInput, String>('name', _$name);

  static const value = Field<ConfigArgInput, String>('value', _$value);

  static String _$name(ConfigArgInput e) {
    return e.name;
  }

  static String _$value(ConfigArgInput e) {
    return e.value;
  }
}

extension ConfigArgInputCompareE on ConfigArgInput {
  Map<String, dynamic> compareToConfigArgInput(ConfigArgInput other) {
    final Map<String, dynamic> diff = {};

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (value != other.value) {
      diff['value'] = () => other.value;
    }
    return diff;
  }
}
