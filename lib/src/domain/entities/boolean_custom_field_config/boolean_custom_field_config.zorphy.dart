// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'boolean_custom_field_config.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class BooleanCustomFieldConfig {
  BooleanCustomFieldConfig({
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

  factory BooleanCustomFieldConfig.fromJson(Map<String, dynamic> json) =>
      _$BooleanCustomFieldConfigFromJson(json);

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

  BooleanCustomFieldConfig copyWith({
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
    return BooleanCustomFieldConfig(
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
  BooleanCustomFieldConfig copyWithField<T>(
    Field<BooleanCustomFieldConfig, T> field,
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
          'BooleanCustomFieldConfig has no settable field with this name',
        );
    }
  }

  BooleanCustomFieldConfig copyWithBooleanCustomFieldConfig({
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

  BooleanCustomFieldConfig patchWithBooleanCustomFieldConfig([
    BooleanCustomFieldConfigPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? BooleanCustomFieldConfigPatch();
    final _patchMap = _patcher.patchMap;
    return BooleanCustomFieldConfig(
      description: _patchMap.containsKey(BooleanCustomFieldConfig$.description)
          ? ((_patchMap[BooleanCustomFieldConfig$.description] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.description](
                        this.description,
                      )
                    : (_patchMap[BooleanCustomFieldConfig$.description]
                          is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.description])
                as List<LocalizedString>?
          : this.description,
      internal: _patchMap.containsKey(BooleanCustomFieldConfig$.internal)
          ? ((_patchMap[BooleanCustomFieldConfig$.internal] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.internal](
                        this.internal,
                      )
                    : (_patchMap[BooleanCustomFieldConfig$.internal] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.internal].applyTo(
                        this.internal,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.internal])
                as bool?
          : this.internal,
      label: _patchMap.containsKey(BooleanCustomFieldConfig$.label)
          ? ((_patchMap[BooleanCustomFieldConfig$.label] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.label](this.label)
                    : (_patchMap[BooleanCustomFieldConfig$.label] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.label].applyTo(
                        this.label,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.label])
                as List<LocalizedString>?
          : this.label,
      list: _patchMap.containsKey(BooleanCustomFieldConfig$.list)
          ? ((_patchMap[BooleanCustomFieldConfig$.list] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.list](this.list)
                    : (_patchMap[BooleanCustomFieldConfig$.list] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.list].applyTo(
                        this.list,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.list])
                as bool
          : this.list,
      name: _patchMap.containsKey(BooleanCustomFieldConfig$.name_)
          ? ((_patchMap[BooleanCustomFieldConfig$.name_] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.name_](this.name)
                    : (_patchMap[BooleanCustomFieldConfig$.name_] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.name_].applyTo(
                        this.name,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.name_])
                as String
          : this.name,
      nullable: _patchMap.containsKey(BooleanCustomFieldConfig$.nullable)
          ? ((_patchMap[BooleanCustomFieldConfig$.nullable] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.nullable](
                        this.nullable,
                      )
                    : (_patchMap[BooleanCustomFieldConfig$.nullable] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.nullable].applyTo(
                        this.nullable,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.nullable])
                as bool?
          : this.nullable,
      readonly: _patchMap.containsKey(BooleanCustomFieldConfig$.readonly)
          ? ((_patchMap[BooleanCustomFieldConfig$.readonly] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.readonly](
                        this.readonly,
                      )
                    : (_patchMap[BooleanCustomFieldConfig$.readonly] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.readonly].applyTo(
                        this.readonly,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.readonly])
                as bool?
          : this.readonly,
      requiresPermission:
          _patchMap.containsKey(BooleanCustomFieldConfig$.requiresPermission)
          ? ((_patchMap[BooleanCustomFieldConfig$.requiresPermission]
                        is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.requiresPermission](
                        this.requiresPermission,
                      )
                    : (_patchMap[BooleanCustomFieldConfig$.requiresPermission]
                          is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.requiresPermission]
                          .applyTo(this.requiresPermission)
                    : _patchMap[BooleanCustomFieldConfig$.requiresPermission])
                as List<Permission>?
          : this.requiresPermission,
      type: _patchMap.containsKey(BooleanCustomFieldConfig$.type)
          ? ((_patchMap[BooleanCustomFieldConfig$.type] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.type](this.type)
                    : (_patchMap[BooleanCustomFieldConfig$.type] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.type].applyTo(
                        this.type,
                      )
                    : _patchMap[BooleanCustomFieldConfig$.type])
                as String
          : this.type,
      ui: _patchMap.containsKey(BooleanCustomFieldConfig$.ui)
          ? ((_patchMap[BooleanCustomFieldConfig$.ui] is Function)
                    ? _patchMap[BooleanCustomFieldConfig$.ui](this.ui)
                    : (_patchMap[BooleanCustomFieldConfig$.ui] is Patch)
                    ? _patchMap[BooleanCustomFieldConfig$.ui].applyTo(this.ui)
                    : _patchMap[BooleanCustomFieldConfig$.ui])
                as Map<String, dynamic>?
          : this.ui,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BooleanCustomFieldConfig &&
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
    return 'BooleanCustomFieldConfig(' +
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
    final Map<String, dynamic> data = _$BooleanCustomFieldConfigToJson(this);
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

extension BooleanCustomFieldConfigPropertyHelpers on BooleanCustomFieldConfig {
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

extension BooleanCustomFieldConfigSerialization on BooleanCustomFieldConfig {
  Map<String, dynamic> toJson() {
    return _$BooleanCustomFieldConfigToJson(this);
  }
}

enum BooleanCustomFieldConfig$ {
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

class BooleanCustomFieldConfigPatch
    extends PatchBase<BooleanCustomFieldConfig, BooleanCustomFieldConfig$> {
  BooleanCustomFieldConfig applyTo(BooleanCustomFieldConfig entity) {
    return entity.patchWithBooleanCustomFieldConfig(this);
  }

  BooleanCustomFieldConfigPatch withDescription(List<LocalizedString>? value) {
    patchMap[BooleanCustomFieldConfig$.description] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch updateDescriptionAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[BooleanCustomFieldConfig$.description] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  BooleanCustomFieldConfigPatch withInternal(bool? value) {
    patchMap[BooleanCustomFieldConfig$.internal] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withLabel(List<LocalizedString>? value) {
    patchMap[BooleanCustomFieldConfig$.label] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch updateLabelAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[BooleanCustomFieldConfig$.label] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  BooleanCustomFieldConfigPatch withList(bool? value) {
    patchMap[BooleanCustomFieldConfig$.list] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withName(String? value) {
    patchMap[BooleanCustomFieldConfig$.name_] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withNullable(bool? value) {
    patchMap[BooleanCustomFieldConfig$.nullable] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withReadonly(bool? value) {
    patchMap[BooleanCustomFieldConfig$.readonly] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withRequiresPermission(
    List<Permission>? value,
  ) {
    patchMap[BooleanCustomFieldConfig$.requiresPermission] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withType(String? value) {
    patchMap[BooleanCustomFieldConfig$.type] = value;
    return this;
  }

  BooleanCustomFieldConfigPatch withUi(Map<String, dynamic>? value) {
    patchMap[BooleanCustomFieldConfig$.ui] = value;
    return this;
  }
}

/// Field descriptors for [BooleanCustomFieldConfig] query construction
abstract final class BooleanCustomFieldConfigFields {
  static const description =
      Field<BooleanCustomFieldConfig, List<LocalizedString>?>(
        'description',
        _$description,
      );

  static const internal = Field<BooleanCustomFieldConfig, bool?>(
    'internal',
    _$internal,
  );

  static const label = Field<BooleanCustomFieldConfig, List<LocalizedString>?>(
    'label',
    _$label,
  );

  static const list = Field<BooleanCustomFieldConfig, bool>('list', _$list);

  static const name = Field<BooleanCustomFieldConfig, String>('name', _$name);

  static const nullable = Field<BooleanCustomFieldConfig, bool?>(
    'nullable',
    _$nullable,
  );

  static const readonly = Field<BooleanCustomFieldConfig, bool?>(
    'readonly',
    _$readonly,
  );

  static const requiresPermission =
      Field<BooleanCustomFieldConfig, List<Permission>?>(
        'requiresPermission',
        _$requiresPermission,
      );

  static const type = Field<BooleanCustomFieldConfig, String>('type', _$type);

  static const ui = Field<BooleanCustomFieldConfig, Map<String, dynamic>?>(
    'ui',
    _$ui,
  );

  static List<LocalizedString>? _$description(BooleanCustomFieldConfig e) {
    return e.description;
  }

  static bool? _$internal(BooleanCustomFieldConfig e) {
    return e.internal;
  }

  static List<LocalizedString>? _$label(BooleanCustomFieldConfig e) {
    return e.label;
  }

  static bool _$list(BooleanCustomFieldConfig e) {
    return e.list;
  }

  static String _$name(BooleanCustomFieldConfig e) {
    return e.name;
  }

  static bool? _$nullable(BooleanCustomFieldConfig e) {
    return e.nullable;
  }

  static bool? _$readonly(BooleanCustomFieldConfig e) {
    return e.readonly;
  }

  static List<Permission>? _$requiresPermission(BooleanCustomFieldConfig e) {
    return e.requiresPermission;
  }

  static String _$type(BooleanCustomFieldConfig e) {
    return e.type;
  }

  static Map<String, dynamic>? _$ui(BooleanCustomFieldConfig e) {
    return e.ui;
  }
}

extension BooleanCustomFieldConfigCompareE on BooleanCustomFieldConfig {
  Map<String, dynamic> compareToBooleanCustomFieldConfig(
    BooleanCustomFieldConfig other,
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
