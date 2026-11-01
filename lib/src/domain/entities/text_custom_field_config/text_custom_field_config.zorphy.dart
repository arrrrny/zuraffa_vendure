// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'text_custom_field_config.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class TextCustomFieldConfig {
  TextCustomFieldConfig({
    List<LocalizedString>? this.description,
    bool? this.internal,
    List<LocalizedString>? this.label,
    required bool this.list,
    required String this.name,
    bool? this.nullable,
    bool? this.readonly,
    List<Permission>? this.requiresPermission,
    required String this.type,
    Map<String, dynamic>? this.ui,
  });

  factory TextCustomFieldConfig.fromJson(Map<String, dynamic> json) =>
      _$TextCustomFieldConfigFromJson(json);

  final List<LocalizedString>? description;

  final bool? internal;

  final List<LocalizedString>? label;

  final bool list;

  final String name;

  final bool? nullable;

  final bool? readonly;

  final List<Permission>? requiresPermission;

  final String type;

  final Map<String, dynamic>? ui;

  TextCustomFieldConfig copyWith({
    List<LocalizedString>? description,
    bool? internal,
    List<LocalizedString>? label,
    bool? list,
    String? name,
    bool? nullable,
    bool? readonly,
    List<Permission>? requiresPermission,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return TextCustomFieldConfig(
      description: description ?? this.description,
      internal: internal ?? this.internal,
      label: label ?? this.label,
      list: list ?? this.list,
      name: name ?? this.name,
      nullable: nullable ?? this.nullable,
      readonly: readonly ?? this.readonly,
      requiresPermission: requiresPermission ?? this.requiresPermission,
      type: type ?? this.type,
      ui: ui ?? this.ui,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  TextCustomFieldConfig copyWithField<T>(
    Field<TextCustomFieldConfig, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'description':
        return copyWith(description: value as List<LocalizedString>?);
      case 'internal':
        return copyWith(internal: value as bool?);
      case 'label':
        return copyWith(label: value as List<LocalizedString>?);
      case 'list':
        return copyWith(list: value as bool);
      case 'name':
        return copyWith(name: value as String);
      case 'nullable':
        return copyWith(nullable: value as bool?);
      case 'readonly':
        return copyWith(readonly: value as bool?);
      case 'requiresPermission':
        return copyWith(requiresPermission: value as List<Permission>?);
      case 'type':
        return copyWith(type: value as String);
      case 'ui':
        return copyWith(ui: value as Map<String, dynamic>?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'TextCustomFieldConfig has no settable field with this name',
        );
    }
  }

  TextCustomFieldConfig copyWithTextCustomFieldConfig({
    List<LocalizedString>? description,
    bool? internal,
    List<LocalizedString>? label,
    bool? list,
    String? name,
    bool? nullable,
    bool? readonly,
    List<Permission>? requiresPermission,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return copyWith(
      description: description,
      internal: internal,
      label: label,
      list: list,
      name: name,
      nullable: nullable,
      readonly: readonly,
      requiresPermission: requiresPermission,
      type: type,
      ui: ui,
    );
  }

  TextCustomFieldConfig patchWithTextCustomFieldConfig([
    TextCustomFieldConfigPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? TextCustomFieldConfigPatch();
    final _patchMap = _patcher.patchMap;
    return TextCustomFieldConfig(
      description: _patchMap.containsKey(TextCustomFieldConfig$.description)
          ? ((_patchMap[TextCustomFieldConfig$.description] is Function)
                    ? _patchMap[TextCustomFieldConfig$.description](
                        this.description,
                      )
                    : (_patchMap[TextCustomFieldConfig$.description] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[TextCustomFieldConfig$.description])
                as List<LocalizedString>?
          : this.description,
      internal: _patchMap.containsKey(TextCustomFieldConfig$.internal)
          ? ((_patchMap[TextCustomFieldConfig$.internal] is Function)
                    ? _patchMap[TextCustomFieldConfig$.internal](this.internal)
                    : (_patchMap[TextCustomFieldConfig$.internal] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.internal].applyTo(
                        this.internal,
                      )
                    : _patchMap[TextCustomFieldConfig$.internal])
                as bool?
          : this.internal,
      label: _patchMap.containsKey(TextCustomFieldConfig$.label)
          ? ((_patchMap[TextCustomFieldConfig$.label] is Function)
                    ? _patchMap[TextCustomFieldConfig$.label](this.label)
                    : (_patchMap[TextCustomFieldConfig$.label] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.label].applyTo(
                        this.label,
                      )
                    : _patchMap[TextCustomFieldConfig$.label])
                as List<LocalizedString>?
          : this.label,
      list: _patchMap.containsKey(TextCustomFieldConfig$.list)
          ? ((_patchMap[TextCustomFieldConfig$.list] is Function)
                    ? _patchMap[TextCustomFieldConfig$.list](this.list)
                    : (_patchMap[TextCustomFieldConfig$.list] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.list].applyTo(this.list)
                    : _patchMap[TextCustomFieldConfig$.list])
                as bool
          : this.list,
      name: _patchMap.containsKey(TextCustomFieldConfig$.name_)
          ? ((_patchMap[TextCustomFieldConfig$.name_] is Function)
                    ? _patchMap[TextCustomFieldConfig$.name_](this.name)
                    : (_patchMap[TextCustomFieldConfig$.name_] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.name_].applyTo(this.name)
                    : _patchMap[TextCustomFieldConfig$.name_])
                as String
          : this.name,
      nullable: _patchMap.containsKey(TextCustomFieldConfig$.nullable)
          ? ((_patchMap[TextCustomFieldConfig$.nullable] is Function)
                    ? _patchMap[TextCustomFieldConfig$.nullable](this.nullable)
                    : (_patchMap[TextCustomFieldConfig$.nullable] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.nullable].applyTo(
                        this.nullable,
                      )
                    : _patchMap[TextCustomFieldConfig$.nullable])
                as bool?
          : this.nullable,
      readonly: _patchMap.containsKey(TextCustomFieldConfig$.readonly)
          ? ((_patchMap[TextCustomFieldConfig$.readonly] is Function)
                    ? _patchMap[TextCustomFieldConfig$.readonly](this.readonly)
                    : (_patchMap[TextCustomFieldConfig$.readonly] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.readonly].applyTo(
                        this.readonly,
                      )
                    : _patchMap[TextCustomFieldConfig$.readonly])
                as bool?
          : this.readonly,
      requiresPermission:
          _patchMap.containsKey(TextCustomFieldConfig$.requiresPermission)
          ? ((_patchMap[TextCustomFieldConfig$.requiresPermission] is Function)
                    ? _patchMap[TextCustomFieldConfig$.requiresPermission](
                        this.requiresPermission,
                      )
                    : (_patchMap[TextCustomFieldConfig$.requiresPermission]
                          is Patch)
                    ? _patchMap[TextCustomFieldConfig$.requiresPermission]
                          .applyTo(this.requiresPermission)
                    : _patchMap[TextCustomFieldConfig$.requiresPermission])
                as List<Permission>?
          : this.requiresPermission,
      type: _patchMap.containsKey(TextCustomFieldConfig$.type)
          ? ((_patchMap[TextCustomFieldConfig$.type] is Function)
                    ? _patchMap[TextCustomFieldConfig$.type](this.type)
                    : (_patchMap[TextCustomFieldConfig$.type] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.type].applyTo(this.type)
                    : _patchMap[TextCustomFieldConfig$.type])
                as String
          : this.type,
      ui: _patchMap.containsKey(TextCustomFieldConfig$.ui)
          ? ((_patchMap[TextCustomFieldConfig$.ui] is Function)
                    ? _patchMap[TextCustomFieldConfig$.ui](this.ui)
                    : (_patchMap[TextCustomFieldConfig$.ui] is Patch)
                    ? _patchMap[TextCustomFieldConfig$.ui].applyTo(this.ui)
                    : _patchMap[TextCustomFieldConfig$.ui])
                as Map<String, dynamic>?
          : this.ui,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TextCustomFieldConfig &&
        description == other.description &&
        internal == other.internal &&
        label == other.label &&
        list == other.list &&
        name == other.name &&
        nullable == other.nullable &&
        readonly == other.readonly &&
        requiresPermission == other.requiresPermission &&
        type == other.type &&
        ui == other.ui;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.description,
      this.internal,
      this.label,
      this.list,
      this.name,
      this.nullable,
      this.readonly,
      this.requiresPermission,
      this.type,
      this.ui,
    );
  }

  @override
  String toString() {
    return 'TextCustomFieldConfig(' +
        'description: ${description}' +
        ', ' +
        'internal: ${internal}' +
        ', ' +
        'label: ${label}' +
        ', ' +
        'list: ${list}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'nullable: ${nullable}' +
        ', ' +
        'readonly: ${readonly}' +
        ', ' +
        'requiresPermission: ${requiresPermission}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'ui: ${ui})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$TextCustomFieldConfigToJson(this);
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

extension TextCustomFieldConfigPropertyHelpers on TextCustomFieldConfig {
  List<LocalizedString> get descriptionRequired {
    return this.description ??
        (throw StateError('description is required but was null'));
  }

  bool get hasDescription {
    return this.description?.isNotEmpty ?? false;
  }

  bool get noDescription {
    return this.description?.isEmpty ?? true;
  }

  bool get hasInternal {
    return this.internal != null;
  }

  bool get noInternal {
    return this.internal == null;
  }

  bool get internalRequired {
    return this.internal ??
        (throw StateError('internal is required but was null'));
  }

  List<LocalizedString> get labelRequired {
    return this.label ?? (throw StateError('label is required but was null'));
  }

  bool get hasLabel {
    return this.label?.isNotEmpty ?? false;
  }

  bool get noLabel {
    return this.label?.isEmpty ?? true;
  }

  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }

  bool get hasNullable {
    return this.nullable != null;
  }

  bool get noNullable {
    return this.nullable == null;
  }

  bool get nullableRequired {
    return this.nullable ??
        (throw StateError('nullable is required but was null'));
  }

  bool get hasReadonly {
    return this.readonly != null;
  }

  bool get noReadonly {
    return this.readonly == null;
  }

  bool get readonlyRequired {
    return this.readonly ??
        (throw StateError('readonly is required but was null'));
  }

  List<Permission> get requiresPermissionRequired {
    return this.requiresPermission ??
        (throw StateError('requiresPermission is required but was null'));
  }

  bool get hasRequiresPermission {
    return this.requiresPermission?.isNotEmpty ?? false;
  }

  bool get noRequiresPermission {
    return this.requiresPermission?.isEmpty ?? true;
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

extension TextCustomFieldConfigSerialization on TextCustomFieldConfig {
  Map<String, dynamic> toJson() {
    return _$TextCustomFieldConfigToJson(this);
  }
}

enum TextCustomFieldConfig$ {
  description,
  internal,
  label,
  list,
  name_,
  nullable,
  readonly,
  requiresPermission,
  type,
  ui,
}

class TextCustomFieldConfigPatch
    extends PatchBase<TextCustomFieldConfig, TextCustomFieldConfig$> {
  TextCustomFieldConfig applyTo(TextCustomFieldConfig entity) {
    return entity.patchWithTextCustomFieldConfig(this);
  }

  TextCustomFieldConfigPatch withDescription(List<LocalizedString>? value) {
    patchMap[TextCustomFieldConfig$.description] = value;
    return this;
  }

  TextCustomFieldConfigPatch updateDescriptionAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[TextCustomFieldConfig$.description] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  TextCustomFieldConfigPatch withInternal(bool? value) {
    patchMap[TextCustomFieldConfig$.internal] = value;
    return this;
  }

  TextCustomFieldConfigPatch withLabel(List<LocalizedString>? value) {
    patchMap[TextCustomFieldConfig$.label] = value;
    return this;
  }

  TextCustomFieldConfigPatch updateLabelAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[TextCustomFieldConfig$.label] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  TextCustomFieldConfigPatch withList(bool? value) {
    patchMap[TextCustomFieldConfig$.list] = value;
    return this;
  }

  TextCustomFieldConfigPatch withName(String? value) {
    patchMap[TextCustomFieldConfig$.name_] = value;
    return this;
  }

  TextCustomFieldConfigPatch withNullable(bool? value) {
    patchMap[TextCustomFieldConfig$.nullable] = value;
    return this;
  }

  TextCustomFieldConfigPatch withReadonly(bool? value) {
    patchMap[TextCustomFieldConfig$.readonly] = value;
    return this;
  }

  TextCustomFieldConfigPatch withRequiresPermission(List<Permission>? value) {
    patchMap[TextCustomFieldConfig$.requiresPermission] = value;
    return this;
  }

  TextCustomFieldConfigPatch withType(String? value) {
    patchMap[TextCustomFieldConfig$.type] = value;
    return this;
  }

  TextCustomFieldConfigPatch withUi(Map<String, dynamic>? value) {
    patchMap[TextCustomFieldConfig$.ui] = value;
    return this;
  }
}

/// Field descriptors for [TextCustomFieldConfig] query construction
abstract final class TextCustomFieldConfigFields {
  static const description =
      Field<TextCustomFieldConfig, List<LocalizedString>?>(
        'description',
        _$description,
      );

  static const internal = Field<TextCustomFieldConfig, bool?>(
    'internal',
    _$internal,
  );

  static const label = Field<TextCustomFieldConfig, List<LocalizedString>?>(
    'label',
    _$label,
  );

  static const list = Field<TextCustomFieldConfig, bool>('list', _$list);

  static const name = Field<TextCustomFieldConfig, String>('name', _$name);

  static const nullable = Field<TextCustomFieldConfig, bool?>(
    'nullable',
    _$nullable,
  );

  static const readonly = Field<TextCustomFieldConfig, bool?>(
    'readonly',
    _$readonly,
  );

  static const requiresPermission =
      Field<TextCustomFieldConfig, List<Permission>?>(
        'requiresPermission',
        _$requiresPermission,
      );

  static const type = Field<TextCustomFieldConfig, String>('type', _$type);

  static const ui = Field<TextCustomFieldConfig, Map<String, dynamic>?>(
    'ui',
    _$ui,
  );

  static List<LocalizedString>? _$description(TextCustomFieldConfig e) {
    return e.description;
  }

  static bool? _$internal(TextCustomFieldConfig e) {
    return e.internal;
  }

  static List<LocalizedString>? _$label(TextCustomFieldConfig e) {
    return e.label;
  }

  static bool _$list(TextCustomFieldConfig e) {
    return e.list;
  }

  static String _$name(TextCustomFieldConfig e) {
    return e.name;
  }

  static bool? _$nullable(TextCustomFieldConfig e) {
    return e.nullable;
  }

  static bool? _$readonly(TextCustomFieldConfig e) {
    return e.readonly;
  }

  static List<Permission>? _$requiresPermission(TextCustomFieldConfig e) {
    return e.requiresPermission;
  }

  static String _$type(TextCustomFieldConfig e) {
    return e.type;
  }

  static Map<String, dynamic>? _$ui(TextCustomFieldConfig e) {
    return e.ui;
  }
}

extension TextCustomFieldConfigCompareE on TextCustomFieldConfig {
  Map<String, dynamic> compareToTextCustomFieldConfig(
    TextCustomFieldConfig other,
  ) {
    final Map<String, dynamic> diff = {};

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (internal != other.internal) {
      diff['internal'] = () => other.internal;
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

    if (nullable != other.nullable) {
      diff['nullable'] = () => other.nullable;
    }

    if (readonly != other.readonly) {
      diff['readonly'] = () => other.readonly;
    }

    if (requiresPermission != other.requiresPermission) {
      diff['requiresPermission'] = () => other.requiresPermission;
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
