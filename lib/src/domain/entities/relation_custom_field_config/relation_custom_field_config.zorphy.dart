// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'relation_custom_field_config.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class RelationCustomFieldConfig {
  RelationCustomFieldConfig({
    List<LocalizedString>? this.description,
    required String this.entity,
    bool? this.internal,
    List<LocalizedString>? this.label,
    required bool this.list,
    required String this.name,
    bool? this.nullable,
    bool? this.readonly,
    List<Permission>? this.requiresPermission,
    required List<String> this.scalarFields,
    required String this.type,
    Map<String, dynamic>? this.ui,
  });

  factory RelationCustomFieldConfig.fromJson(Map<String, dynamic> json) =>
      _$RelationCustomFieldConfigFromJson(json);

  final List<LocalizedString>? description;

  final String entity;

  final bool? internal;

  final List<LocalizedString>? label;

  final bool list;

  final String name;

  final bool? nullable;

  final bool? readonly;

  final List<Permission>? requiresPermission;

  final List<String> scalarFields;

  final String type;

  final Map<String, dynamic>? ui;

  RelationCustomFieldConfig copyWith({
    List<LocalizedString>? description,
    String? entity,
    bool? internal,
    List<LocalizedString>? label,
    bool? list,
    String? name,
    bool? nullable,
    bool? readonly,
    List<Permission>? requiresPermission,
    List<String>? scalarFields,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return RelationCustomFieldConfig(
      description: description ?? this.description,
      entity: entity ?? this.entity,
      internal: internal ?? this.internal,
      label: label ?? this.label,
      list: list ?? this.list,
      name: name ?? this.name,
      nullable: nullable ?? this.nullable,
      readonly: readonly ?? this.readonly,
      requiresPermission: requiresPermission ?? this.requiresPermission,
      scalarFields: scalarFields ?? this.scalarFields,
      type: type ?? this.type,
      ui: ui ?? this.ui,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  RelationCustomFieldConfig copyWithField<T>(
    Field<RelationCustomFieldConfig, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'description':
        return copyWith(description: value as List<LocalizedString>?);
      case 'entity':
        return copyWith(entity: value as String);
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
      case 'scalarFields':
        return copyWith(scalarFields: value as List<String>);
      case 'type':
        return copyWith(type: value as String);
      case 'ui':
        return copyWith(ui: value as Map<String, dynamic>?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'RelationCustomFieldConfig has no settable field with this name',
        );
    }
  }

  RelationCustomFieldConfig copyWithRelationCustomFieldConfig({
    List<LocalizedString>? description,
    String? entity,
    bool? internal,
    List<LocalizedString>? label,
    bool? list,
    String? name,
    bool? nullable,
    bool? readonly,
    List<Permission>? requiresPermission,
    List<String>? scalarFields,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return copyWith(
      description: description,
      entity: entity,
      internal: internal,
      label: label,
      list: list,
      name: name,
      nullable: nullable,
      readonly: readonly,
      requiresPermission: requiresPermission,
      scalarFields: scalarFields,
      type: type,
      ui: ui,
    );
  }

  RelationCustomFieldConfig patchWithRelationCustomFieldConfig([
    RelationCustomFieldConfigPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? RelationCustomFieldConfigPatch();
    final _patchMap = _patcher.patchMap;
    return RelationCustomFieldConfig(
      description: _patchMap.containsKey(RelationCustomFieldConfig$.description)
          ? ((_patchMap[RelationCustomFieldConfig$.description] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.description](
                        this.description,
                      )
                    : (_patchMap[RelationCustomFieldConfig$.description]
                          is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[RelationCustomFieldConfig$.description])
                as List<LocalizedString>?
          : this.description,
      entity: _patchMap.containsKey(RelationCustomFieldConfig$.entity)
          ? ((_patchMap[RelationCustomFieldConfig$.entity] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.entity](this.entity)
                    : (_patchMap[RelationCustomFieldConfig$.entity] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.entity].applyTo(
                        this.entity,
                      )
                    : _patchMap[RelationCustomFieldConfig$.entity])
                as String
          : this.entity,
      internal: _patchMap.containsKey(RelationCustomFieldConfig$.internal)
          ? ((_patchMap[RelationCustomFieldConfig$.internal] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.internal](
                        this.internal,
                      )
                    : (_patchMap[RelationCustomFieldConfig$.internal] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.internal].applyTo(
                        this.internal,
                      )
                    : _patchMap[RelationCustomFieldConfig$.internal])
                as bool?
          : this.internal,
      label: _patchMap.containsKey(RelationCustomFieldConfig$.label)
          ? ((_patchMap[RelationCustomFieldConfig$.label] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.label](this.label)
                    : (_patchMap[RelationCustomFieldConfig$.label] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.label].applyTo(
                        this.label,
                      )
                    : _patchMap[RelationCustomFieldConfig$.label])
                as List<LocalizedString>?
          : this.label,
      list: _patchMap.containsKey(RelationCustomFieldConfig$.list)
          ? ((_patchMap[RelationCustomFieldConfig$.list] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.list](this.list)
                    : (_patchMap[RelationCustomFieldConfig$.list] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.list].applyTo(
                        this.list,
                      )
                    : _patchMap[RelationCustomFieldConfig$.list])
                as bool
          : this.list,
      name: _patchMap.containsKey(RelationCustomFieldConfig$.name_)
          ? ((_patchMap[RelationCustomFieldConfig$.name_] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.name_](this.name)
                    : (_patchMap[RelationCustomFieldConfig$.name_] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.name_].applyTo(
                        this.name,
                      )
                    : _patchMap[RelationCustomFieldConfig$.name_])
                as String
          : this.name,
      nullable: _patchMap.containsKey(RelationCustomFieldConfig$.nullable)
          ? ((_patchMap[RelationCustomFieldConfig$.nullable] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.nullable](
                        this.nullable,
                      )
                    : (_patchMap[RelationCustomFieldConfig$.nullable] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.nullable].applyTo(
                        this.nullable,
                      )
                    : _patchMap[RelationCustomFieldConfig$.nullable])
                as bool?
          : this.nullable,
      readonly: _patchMap.containsKey(RelationCustomFieldConfig$.readonly)
          ? ((_patchMap[RelationCustomFieldConfig$.readonly] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.readonly](
                        this.readonly,
                      )
                    : (_patchMap[RelationCustomFieldConfig$.readonly] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.readonly].applyTo(
                        this.readonly,
                      )
                    : _patchMap[RelationCustomFieldConfig$.readonly])
                as bool?
          : this.readonly,
      requiresPermission:
          _patchMap.containsKey(RelationCustomFieldConfig$.requiresPermission)
          ? ((_patchMap[RelationCustomFieldConfig$.requiresPermission]
                        is Function)
                    ? _patchMap[RelationCustomFieldConfig$.requiresPermission](
                        this.requiresPermission,
                      )
                    : (_patchMap[RelationCustomFieldConfig$.requiresPermission]
                          is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.requiresPermission]
                          .applyTo(this.requiresPermission)
                    : _patchMap[RelationCustomFieldConfig$.requiresPermission])
                as List<Permission>?
          : this.requiresPermission,
      scalarFields:
          _patchMap.containsKey(RelationCustomFieldConfig$.scalarFields)
          ? ((_patchMap[RelationCustomFieldConfig$.scalarFields] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.scalarFields](
                        this.scalarFields,
                      )
                    : (_patchMap[RelationCustomFieldConfig$.scalarFields]
                          is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.scalarFields]
                          .applyTo(this.scalarFields)
                    : _patchMap[RelationCustomFieldConfig$.scalarFields])
                as List<String>
          : this.scalarFields,
      type: _patchMap.containsKey(RelationCustomFieldConfig$.type)
          ? ((_patchMap[RelationCustomFieldConfig$.type] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.type](this.type)
                    : (_patchMap[RelationCustomFieldConfig$.type] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.type].applyTo(
                        this.type,
                      )
                    : _patchMap[RelationCustomFieldConfig$.type])
                as String
          : this.type,
      ui: _patchMap.containsKey(RelationCustomFieldConfig$.ui)
          ? ((_patchMap[RelationCustomFieldConfig$.ui] is Function)
                    ? _patchMap[RelationCustomFieldConfig$.ui](this.ui)
                    : (_patchMap[RelationCustomFieldConfig$.ui] is Patch)
                    ? _patchMap[RelationCustomFieldConfig$.ui].applyTo(this.ui)
                    : _patchMap[RelationCustomFieldConfig$.ui])
                as Map<String, dynamic>?
          : this.ui,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RelationCustomFieldConfig &&
        description == other.description &&
        entity == other.entity &&
        internal == other.internal &&
        label == other.label &&
        list == other.list &&
        name == other.name &&
        nullable == other.nullable &&
        readonly == other.readonly &&
        requiresPermission == other.requiresPermission &&
        scalarFields == other.scalarFields &&
        type == other.type &&
        ui == other.ui;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.description,
      this.entity,
      this.internal,
      this.label,
      this.list,
      this.name,
      this.nullable,
      this.readonly,
      this.requiresPermission,
      this.scalarFields,
      this.type,
      this.ui,
    );
  }

  @override
  String toString() {
    return 'RelationCustomFieldConfig(' +
        'description: ${description}' +
        ', ' +
        'entity: ${entity}' +
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
        'scalarFields: ${scalarFields}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'ui: ${ui})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$RelationCustomFieldConfigToJson(this);
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

extension RelationCustomFieldConfigPropertyHelpers
    on RelationCustomFieldConfig {
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

  bool get hasEntity {
    return this.entity.isNotEmpty;
  }

  bool get noEntity {
    return this.entity.isEmpty;
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

  bool get hasScalarFields {
    return this.scalarFields.isNotEmpty;
  }

  bool get noScalarFields {
    return this.scalarFields.isEmpty;
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

extension RelationCustomFieldConfigSerialization on RelationCustomFieldConfig {
  Map<String, dynamic> toJson() {
    return _$RelationCustomFieldConfigToJson(this);
  }
}

enum RelationCustomFieldConfig$ {
  description,
  entity,
  internal,
  label,
  list,
  name_,
  nullable,
  readonly,
  requiresPermission,
  scalarFields,
  type,
  ui,
}

class RelationCustomFieldConfigPatch
    extends PatchBase<RelationCustomFieldConfig, RelationCustomFieldConfig$> {
  RelationCustomFieldConfig applyTo(RelationCustomFieldConfig entity) {
    return entity.patchWithRelationCustomFieldConfig(this);
  }

  RelationCustomFieldConfigPatch withDescription(List<LocalizedString>? value) {
    patchMap[RelationCustomFieldConfig$.description] = value;
    return this;
  }

  RelationCustomFieldConfigPatch updateDescriptionAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[RelationCustomFieldConfig$.description] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  RelationCustomFieldConfigPatch withEntity(String? value) {
    patchMap[RelationCustomFieldConfig$.entity] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withInternal(bool? value) {
    patchMap[RelationCustomFieldConfig$.internal] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withLabel(List<LocalizedString>? value) {
    patchMap[RelationCustomFieldConfig$.label] = value;
    return this;
  }

  RelationCustomFieldConfigPatch updateLabelAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[RelationCustomFieldConfig$.label] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  RelationCustomFieldConfigPatch withList(bool? value) {
    patchMap[RelationCustomFieldConfig$.list] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withName(String? value) {
    patchMap[RelationCustomFieldConfig$.name_] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withNullable(bool? value) {
    patchMap[RelationCustomFieldConfig$.nullable] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withReadonly(bool? value) {
    patchMap[RelationCustomFieldConfig$.readonly] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withRequiresPermission(
    List<Permission>? value,
  ) {
    patchMap[RelationCustomFieldConfig$.requiresPermission] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withScalarFields(List<String>? value) {
    patchMap[RelationCustomFieldConfig$.scalarFields] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withType(String? value) {
    patchMap[RelationCustomFieldConfig$.type] = value;
    return this;
  }

  RelationCustomFieldConfigPatch withUi(Map<String, dynamic>? value) {
    patchMap[RelationCustomFieldConfig$.ui] = value;
    return this;
  }
}

/// Field descriptors for [RelationCustomFieldConfig] query construction
abstract final class RelationCustomFieldConfigFields {
  static const description =
      Field<RelationCustomFieldConfig, List<LocalizedString>?>(
        'description',
        _$description,
      );

  static const entity = Field<RelationCustomFieldConfig, String>(
    'entity',
    _$entity,
  );

  static const internal = Field<RelationCustomFieldConfig, bool?>(
    'internal',
    _$internal,
  );

  static const label = Field<RelationCustomFieldConfig, List<LocalizedString>?>(
    'label',
    _$label,
  );

  static const list = Field<RelationCustomFieldConfig, bool>('list', _$list);

  static const name = Field<RelationCustomFieldConfig, String>('name', _$name);

  static const nullable = Field<RelationCustomFieldConfig, bool?>(
    'nullable',
    _$nullable,
  );

  static const readonly = Field<RelationCustomFieldConfig, bool?>(
    'readonly',
    _$readonly,
  );

  static const requiresPermission =
      Field<RelationCustomFieldConfig, List<Permission>?>(
        'requiresPermission',
        _$requiresPermission,
      );

  static const scalarFields = Field<RelationCustomFieldConfig, List<String>>(
    'scalarFields',
    _$scalarFields,
  );

  static const type = Field<RelationCustomFieldConfig, String>('type', _$type);

  static const ui = Field<RelationCustomFieldConfig, Map<String, dynamic>?>(
    'ui',
    _$ui,
  );

  static List<LocalizedString>? _$description(RelationCustomFieldConfig e) {
    return e.description;
  }

  static String _$entity(RelationCustomFieldConfig e) {
    return e.entity;
  }

  static bool? _$internal(RelationCustomFieldConfig e) {
    return e.internal;
  }

  static List<LocalizedString>? _$label(RelationCustomFieldConfig e) {
    return e.label;
  }

  static bool _$list(RelationCustomFieldConfig e) {
    return e.list;
  }

  static String _$name(RelationCustomFieldConfig e) {
    return e.name;
  }

  static bool? _$nullable(RelationCustomFieldConfig e) {
    return e.nullable;
  }

  static bool? _$readonly(RelationCustomFieldConfig e) {
    return e.readonly;
  }

  static List<Permission>? _$requiresPermission(RelationCustomFieldConfig e) {
    return e.requiresPermission;
  }

  static List<String> _$scalarFields(RelationCustomFieldConfig e) {
    return e.scalarFields;
  }

  static String _$type(RelationCustomFieldConfig e) {
    return e.type;
  }

  static Map<String, dynamic>? _$ui(RelationCustomFieldConfig e) {
    return e.ui;
  }
}

extension RelationCustomFieldConfigCompareE on RelationCustomFieldConfig {
  Map<String, dynamic> compareToRelationCustomFieldConfig(
    RelationCustomFieldConfig other,
  ) {
    final Map<String, dynamic> diff = {};

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (entity != other.entity) {
      diff['entity'] = () => other.entity;
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

    if (scalarFields != other.scalarFields) {
      diff['scalarFields'] = () => other.scalarFields;
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
