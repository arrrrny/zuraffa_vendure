// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'config_arg_definition.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ConfigArgDefinition {
  ConfigArgDefinition({
    Map<String, dynamic>? this.defaultValue,
    String? this.description,
    String? this.label,
    required bool this.list,
    required String this.name,
    required bool this.required_,
    required String this.type,
    Map<String, dynamic>? this.ui,
  });

  factory ConfigArgDefinition.fromJson(Map<String, dynamic> json) =>
      _$ConfigArgDefinitionFromJson(json);

  final Map<String, dynamic>? defaultValue;

  final String? description;

  final String? label;

  final bool list;

  final String name;

  final bool required_;

  final String type;

  final Map<String, dynamic>? ui;

  ConfigArgDefinition copyWith({
    Map<String, dynamic>? defaultValue,
    String? description,
    String? label,
    bool? list,
    String? name,
    bool? required_,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return ConfigArgDefinition(
      defaultValue: defaultValue ?? this.defaultValue,
      description: description ?? this.description,
      label: label ?? this.label,
      list: list ?? this.list,
      name: name ?? this.name,
      required_: required_ ?? this.required_,
      type: type ?? this.type,
      ui: ui ?? this.ui,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ConfigArgDefinition copyWithField<T>(
    Field<ConfigArgDefinition, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'defaultValue':
        return copyWith(defaultValue: value as Map<String, dynamic>?);
      case 'description':
        return copyWith(description: value as String?);
      case 'label':
        return copyWith(label: value as String?);
      case 'list':
        return copyWith(list: value as bool);
      case 'name':
        return copyWith(name: value as String);
      case 'required_':
        return copyWith(required_: value as bool);
      case 'type':
        return copyWith(type: value as String);
      case 'ui':
        return copyWith(ui: value as Map<String, dynamic>?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ConfigArgDefinition has no settable field with this name',
        );
    }
  }

  ConfigArgDefinition copyWithConfigArgDefinition({
    Map<String, dynamic>? defaultValue,
    String? description,
    String? label,
    bool? list,
    String? name,
    bool? required_,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return copyWith(
      defaultValue: defaultValue,
      description: description,
      label: label,
      list: list,
      name: name,
      required_: required_,
      type: type,
      ui: ui,
    );
  }

  ConfigArgDefinition patchWithConfigArgDefinition([
    ConfigArgDefinitionPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ConfigArgDefinitionPatch();
    final _patchMap = _patcher.patchMap;
    return ConfigArgDefinition(
      defaultValue: _patchMap.containsKey(ConfigArgDefinition$.defaultValue)
          ? ((_patchMap[ConfigArgDefinition$.defaultValue] is Function)
                    ? _patchMap[ConfigArgDefinition$.defaultValue](
                        this.defaultValue,
                      )
                    : (_patchMap[ConfigArgDefinition$.defaultValue] is Patch)
                    ? _patchMap[ConfigArgDefinition$.defaultValue].applyTo(
                        this.defaultValue,
                      )
                    : _patchMap[ConfigArgDefinition$.defaultValue])
                as Map<String, dynamic>?
          : this.defaultValue,
      description: _patchMap.containsKey(ConfigArgDefinition$.description)
          ? ((_patchMap[ConfigArgDefinition$.description] is Function)
                    ? _patchMap[ConfigArgDefinition$.description](
                        this.description,
                      )
                    : (_patchMap[ConfigArgDefinition$.description] is Patch)
                    ? _patchMap[ConfigArgDefinition$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[ConfigArgDefinition$.description])
                as String?
          : this.description,
      label: _patchMap.containsKey(ConfigArgDefinition$.label)
          ? ((_patchMap[ConfigArgDefinition$.label] is Function)
                    ? _patchMap[ConfigArgDefinition$.label](this.label)
                    : (_patchMap[ConfigArgDefinition$.label] is Patch)
                    ? _patchMap[ConfigArgDefinition$.label].applyTo(this.label)
                    : _patchMap[ConfigArgDefinition$.label])
                as String?
          : this.label,
      list: _patchMap.containsKey(ConfigArgDefinition$.list)
          ? ((_patchMap[ConfigArgDefinition$.list] is Function)
                    ? _patchMap[ConfigArgDefinition$.list](this.list)
                    : (_patchMap[ConfigArgDefinition$.list] is Patch)
                    ? _patchMap[ConfigArgDefinition$.list].applyTo(this.list)
                    : _patchMap[ConfigArgDefinition$.list])
                as bool
          : this.list,
      name: _patchMap.containsKey(ConfigArgDefinition$.name_)
          ? ((_patchMap[ConfigArgDefinition$.name_] is Function)
                    ? _patchMap[ConfigArgDefinition$.name_](this.name)
                    : (_patchMap[ConfigArgDefinition$.name_] is Patch)
                    ? _patchMap[ConfigArgDefinition$.name_].applyTo(this.name)
                    : _patchMap[ConfigArgDefinition$.name_])
                as String
          : this.name,
      required_: _patchMap.containsKey(ConfigArgDefinition$.required_)
          ? ((_patchMap[ConfigArgDefinition$.required_] is Function)
                    ? _patchMap[ConfigArgDefinition$.required_](this.required_)
                    : (_patchMap[ConfigArgDefinition$.required_] is Patch)
                    ? _patchMap[ConfigArgDefinition$.required_].applyTo(
                        this.required_,
                      )
                    : _patchMap[ConfigArgDefinition$.required_])
                as bool
          : this.required_,
      type: _patchMap.containsKey(ConfigArgDefinition$.type)
          ? ((_patchMap[ConfigArgDefinition$.type] is Function)
                    ? _patchMap[ConfigArgDefinition$.type](this.type)
                    : (_patchMap[ConfigArgDefinition$.type] is Patch)
                    ? _patchMap[ConfigArgDefinition$.type].applyTo(this.type)
                    : _patchMap[ConfigArgDefinition$.type])
                as String
          : this.type,
      ui: _patchMap.containsKey(ConfigArgDefinition$.ui)
          ? ((_patchMap[ConfigArgDefinition$.ui] is Function)
                    ? _patchMap[ConfigArgDefinition$.ui](this.ui)
                    : (_patchMap[ConfigArgDefinition$.ui] is Patch)
                    ? _patchMap[ConfigArgDefinition$.ui].applyTo(this.ui)
                    : _patchMap[ConfigArgDefinition$.ui])
                as Map<String, dynamic>?
          : this.ui,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ConfigArgDefinition &&
        defaultValue == other.defaultValue &&
        description == other.description &&
        label == other.label &&
        list == other.list &&
        name == other.name &&
        required_ == other.required_ &&
        type == other.type &&
        ui == other.ui;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.defaultValue,
      this.description,
      this.label,
      this.list,
      this.name,
      this.required_,
      this.type,
      this.ui,
    );
  }

  @override
  String toString() {
    return 'ConfigArgDefinition(' +
        'defaultValue: ${defaultValue}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'label: ${label}' +
        ', ' +
        'list: ${list}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'required_: ${required_}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'ui: ${ui})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ConfigArgDefinitionToJson(this);
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

extension ConfigArgDefinitionPropertyHelpers on ConfigArgDefinition {
  Map<String, dynamic> get defaultValueRequired {
    return this.defaultValue ??
        (throw StateError('defaultValue is required but was null'));
  }

  bool get hasDefaultValue {
    return this.defaultValue?.isNotEmpty ?? false;
  }

  bool get noDefaultValue {
    return this.defaultValue?.isEmpty ?? true;
  }

  bool get hasDescription {
    return this.description?.isNotEmpty == true;
  }

  bool get noDescription {
    return this.description?.isEmpty ?? true;
  }

  String get descriptionRequired {
    return this.description ??
        (throw StateError('description is required but was null'));
  }

  bool get hasLabel {
    return this.label?.isNotEmpty == true;
  }

  bool get noLabel {
    return this.label?.isEmpty ?? true;
  }

  String get labelRequired {
    return this.label ?? (throw StateError('label is required but was null'));
  }

  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }

  bool get hasType {
    return this.type.isNotEmpty;
  }

  bool get noType {
    return this.type.isEmpty;
  }

  Map<String, dynamic> get uiRequired {
    return this.ui ?? (throw StateError('ui is required but was null'));
  }

  bool get hasUi {
    return this.ui?.isNotEmpty ?? false;
  }

  bool get noUi {
    return this.ui?.isEmpty ?? true;
  }
}

extension ConfigArgDefinitionSerialization on ConfigArgDefinition {
  Map<String, dynamic> toJson() {
    return _$ConfigArgDefinitionToJson(this);
  }
}

enum ConfigArgDefinition$ {
  defaultValue,
  description,
  label,
  list,
  name_,
  required_,
  type,
  ui,
}

class ConfigArgDefinitionPatch
    extends PatchBase<ConfigArgDefinition, ConfigArgDefinition$> {
  ConfigArgDefinition applyTo(ConfigArgDefinition entity) {
    return entity.patchWithConfigArgDefinition(this);
  }

  ConfigArgDefinitionPatch withDefaultValue(Map<String, dynamic>? value) {
    patchMap[ConfigArgDefinition$.defaultValue] = value;
    return this;
  }

  ConfigArgDefinitionPatch withDescription(String? value) {
    patchMap[ConfigArgDefinition$.description] = value;
    return this;
  }

  ConfigArgDefinitionPatch withLabel(String? value) {
    patchMap[ConfigArgDefinition$.label] = value;
    return this;
  }

  ConfigArgDefinitionPatch withList(bool? value) {
    patchMap[ConfigArgDefinition$.list] = value;
    return this;
  }

  ConfigArgDefinitionPatch withName(String? value) {
    patchMap[ConfigArgDefinition$.name_] = value;
    return this;
  }

  ConfigArgDefinitionPatch withRequired_(bool? value) {
    patchMap[ConfigArgDefinition$.required_] = value;
    return this;
  }

  ConfigArgDefinitionPatch withType(String? value) {
    patchMap[ConfigArgDefinition$.type] = value;
    return this;
  }

  ConfigArgDefinitionPatch withUi(Map<String, dynamic>? value) {
    patchMap[ConfigArgDefinition$.ui] = value;
    return this;
  }
}

/// Field descriptors for [ConfigArgDefinition] query construction
abstract final class ConfigArgDefinitionFields {
  static const defaultValue = Field<ConfigArgDefinition, Map<String, dynamic>?>(
    'defaultValue',
    _$defaultValue,
  );

  static const description = Field<ConfigArgDefinition, String?>(
    'description',
    _$description,
  );

  static const label = Field<ConfigArgDefinition, String?>('label', _$label);

  static const list = Field<ConfigArgDefinition, bool>('list', _$list);

  static const name = Field<ConfigArgDefinition, String>('name', _$name);

  static const required_ = Field<ConfigArgDefinition, bool>(
    'required_',
    _$required_,
  );

  static const type = Field<ConfigArgDefinition, String>('type', _$type);

  static const ui = Field<ConfigArgDefinition, Map<String, dynamic>?>(
    'ui',
    _$ui,
  );

  static Map<String, dynamic>? _$defaultValue(ConfigArgDefinition e) {
    return e.defaultValue;
  }

  static String? _$description(ConfigArgDefinition e) {
    return e.description;
  }

  static String? _$label(ConfigArgDefinition e) {
    return e.label;
  }

  static bool _$list(ConfigArgDefinition e) {
    return e.list;
  }

  static String _$name(ConfigArgDefinition e) {
    return e.name;
  }

  static bool _$required_(ConfigArgDefinition e) {
    return e.required_;
  }

  static String _$type(ConfigArgDefinition e) {
    return e.type;
  }

  static Map<String, dynamic>? _$ui(ConfigArgDefinition e) {
    return e.ui;
  }
}

extension ConfigArgDefinitionCompareE on ConfigArgDefinition {
  Map<String, dynamic> compareToConfigArgDefinition(ConfigArgDefinition other) {
    final Map<String, dynamic> diff = {};

    if (defaultValue != other.defaultValue) {
      diff['defaultValue'] = () => other.defaultValue;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (label != other.label) {
      diff['label'] = () => other.label;
    }

    if (list != other.list) {
      diff['list'] = () => other.list;
    }

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (required_ != other.required_) {
      diff['required_'] = () => other.required_;
    }

    if (type != other.type) {
      diff['type'] = () => other.type;
    }

    if (ui != other.ui) {
      diff['ui'] = () => other.ui;
    }
    return diff;
  }
}
