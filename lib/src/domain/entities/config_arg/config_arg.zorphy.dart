// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'config_arg.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ConfigArg {
  ConfigArg({required String this.name, required String this.value});

  factory ConfigArg.fromJson(Map<String, dynamic> json) =>
      _$ConfigArgFromJson(json);

  final String name;

  final String value;

  ConfigArg copyWith({String? name, String? value}) {
    return ConfigArg(name: name ?? this.name, value: value ?? this.value);
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ConfigArg copyWithField<T>(Field<ConfigArg, T> field, T value) {
    switch (field.name) {
      case 'name':
        return copyWith(name: value as String);
      case 'value':
        return copyWith(value: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ConfigArg has no settable field with this name',
        );
    }
  }

  ConfigArg copyWithConfigArg({String? name, String? value}) {
    return copyWith(name: name, value: value);
  }

  ConfigArg patchWithConfigArg([ConfigArgPatch? patchInput]) {
    final _patcher = patchInput ?? ConfigArgPatch();
    final _patchMap = _patcher.patchMap;
    return ConfigArg(
      name: _patchMap.containsKey(ConfigArg$.name_)
          ? ((_patchMap[ConfigArg$.name_] is Function)
                    ? _patchMap[ConfigArg$.name_](this.name)
                    : (_patchMap[ConfigArg$.name_] is Patch)
                    ? _patchMap[ConfigArg$.name_].applyTo(this.name)
                    : _patchMap[ConfigArg$.name_])
                as String
          : this.name,
      value: _patchMap.containsKey(ConfigArg$.value)
          ? ((_patchMap[ConfigArg$.value] is Function)
                    ? _patchMap[ConfigArg$.value](this.value)
                    : (_patchMap[ConfigArg$.value] is Patch)
                    ? _patchMap[ConfigArg$.value].applyTo(this.value)
                    : _patchMap[ConfigArg$.value])
                as String
          : this.value,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ConfigArg && name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    return Object.hash(this.name, this.value);
  }

  @override
  String toString() {
    return 'ConfigArg(' + 'name: ${name}' + ', ' + 'value: ${value})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ConfigArgToJson(this);
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

extension ConfigArgPropertyHelpers on ConfigArg {
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

extension ConfigArgSerialization on ConfigArg {
  Map<String, dynamic> toJson() {
    return _$ConfigArgToJson(this);
  }
}

enum ConfigArg$ { name_, value }

class ConfigArgPatch extends PatchBase<ConfigArg, ConfigArg$> {
  ConfigArg applyTo(ConfigArg entity) {
    return entity.patchWithConfigArg(this);
  }

  ConfigArgPatch withName(String? value) {
    patchMap[ConfigArg$.name_] = value;
    return this;
  }

  ConfigArgPatch withValue(String? value) {
    patchMap[ConfigArg$.value] = value;
    return this;
  }
}

/// Field descriptors for [ConfigArg] query construction
abstract final class ConfigArgFields {
  static const name = Field<ConfigArg, String>('name', _$name);

  static const value = Field<ConfigArg, String>('value', _$value);

  static String _$name(ConfigArg e) {
    return e.name;
  }

  static String _$value(ConfigArg e) {
    return e.value;
  }
}

extension ConfigArgCompareE on ConfigArg {
  Map<String, dynamic> compareToConfigArg(ConfigArg other) {
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
