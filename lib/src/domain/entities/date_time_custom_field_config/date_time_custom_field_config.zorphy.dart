// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'date_time_custom_field_config.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class DateTimeCustomFieldConfig {
  DateTimeCustomFieldConfig({
    List<LocalizedString>? this.description,
    bool? this.internal,
    List<LocalizedString>? this.label,
    required bool this.list,
    String? this.max,
    String? this.min,
    required String this.name,
    bool? this.nullable,
    bool? this.readonly,
    List<Permission>? this.requiresPermission,
    int? this.step,
    required String this.type,
    Map<String, dynamic>? this.ui,
  });

  factory DateTimeCustomFieldConfig.fromJson(Map<String, dynamic> json) =>
      _$DateTimeCustomFieldConfigFromJson(json);

  final List<LocalizedString>? description;

  final bool? internal;

  final List<LocalizedString>? label;

  final bool list;

  final String? max;

  final String? min;

  final String name;

  final bool? nullable;

  final bool? readonly;

  final List<Permission>? requiresPermission;

  final int? step;

  final String type;

  final Map<String, dynamic>? ui;

  DateTimeCustomFieldConfig copyWith({
    List<LocalizedString>? description,
    bool? internal,
    List<LocalizedString>? label,
    bool? list,
    String? max,
    String? min,
    String? name,
    bool? nullable,
    bool? readonly,
    List<Permission>? requiresPermission,
    int? step,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return DateTimeCustomFieldConfig(
      description: description ?? this.description,
      internal: internal ?? this.internal,
      label: label ?? this.label,
      list: list ?? this.list,
      max: max ?? this.max,
      min: min ?? this.min,
      name: name ?? this.name,
      nullable: nullable ?? this.nullable,
      readonly: readonly ?? this.readonly,
      requiresPermission: requiresPermission ?? this.requiresPermission,
      step: step ?? this.step,
      type: type ?? this.type,
      ui: ui ?? this.ui,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  DateTimeCustomFieldConfig copyWithField<T>(
    Field<DateTimeCustomFieldConfig, T> field,
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
      case 'max':
        return copyWith(max: value as String?);
      case 'min':
        return copyWith(min: value as String?);
      case 'name':
        return copyWith(name: value as String);
      case 'nullable':
        return copyWith(nullable: value as bool?);
      case 'readonly':
        return copyWith(readonly: value as bool?);
      case 'requiresPermission':
        return copyWith(requiresPermission: value as List<Permission>?);
      case 'step':
        return copyWith(step: value as int?);
      case 'type':
        return copyWith(type: value as String);
      case 'ui':
        return copyWith(ui: value as Map<String, dynamic>?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'DateTimeCustomFieldConfig has no settable field with this name',
        );
    }
  }

  DateTimeCustomFieldConfig copyWithDateTimeCustomFieldConfig({
    List<LocalizedString>? description,
    bool? internal,
    List<LocalizedString>? label,
    bool? list,
    String? max,
    String? min,
    String? name,
    bool? nullable,
    bool? readonly,
    List<Permission>? requiresPermission,
    int? step,
    String? type,
    Map<String, dynamic>? ui,
  }) {
    return copyWith(
      description: description,
      internal: internal,
      label: label,
      list: list,
      max: max,
      min: min,
      name: name,
      nullable: nullable,
      readonly: readonly,
      requiresPermission: requiresPermission,
      step: step,
      type: type,
      ui: ui,
    );
  }

  DateTimeCustomFieldConfig patchWithDateTimeCustomFieldConfig([
    DateTimeCustomFieldConfigPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? DateTimeCustomFieldConfigPatch();
    final _patchMap = _patcher.patchMap;
    return DateTimeCustomFieldConfig(
      description: _patchMap.containsKey(DateTimeCustomFieldConfig$.description)
          ? ((_patchMap[DateTimeCustomFieldConfig$.description] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.description](
                        this.description,
                      )
                    : (_patchMap[DateTimeCustomFieldConfig$.description]
                          is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.description])
                as List<LocalizedString>?
          : this.description,
      internal: _patchMap.containsKey(DateTimeCustomFieldConfig$.internal)
          ? ((_patchMap[DateTimeCustomFieldConfig$.internal] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.internal](
                        this.internal,
                      )
                    : (_patchMap[DateTimeCustomFieldConfig$.internal] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.internal].applyTo(
                        this.internal,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.internal])
                as bool?
          : this.internal,
      label: _patchMap.containsKey(DateTimeCustomFieldConfig$.label)
          ? ((_patchMap[DateTimeCustomFieldConfig$.label] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.label](this.label)
                    : (_patchMap[DateTimeCustomFieldConfig$.label] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.label].applyTo(
                        this.label,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.label])
                as List<LocalizedString>?
          : this.label,
      list: _patchMap.containsKey(DateTimeCustomFieldConfig$.list)
          ? ((_patchMap[DateTimeCustomFieldConfig$.list] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.list](this.list)
                    : (_patchMap[DateTimeCustomFieldConfig$.list] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.list].applyTo(
                        this.list,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.list])
                as bool
          : this.list,
      max: _patchMap.containsKey(DateTimeCustomFieldConfig$.max)
          ? ((_patchMap[DateTimeCustomFieldConfig$.max] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.max](this.max)
                    : (_patchMap[DateTimeCustomFieldConfig$.max] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.max].applyTo(
                        this.max,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.max])
                as String?
          : this.max,
      min: _patchMap.containsKey(DateTimeCustomFieldConfig$.min)
          ? ((_patchMap[DateTimeCustomFieldConfig$.min] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.min](this.min)
                    : (_patchMap[DateTimeCustomFieldConfig$.min] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.min].applyTo(
                        this.min,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.min])
                as String?
          : this.min,
      name: _patchMap.containsKey(DateTimeCustomFieldConfig$.name_)
          ? ((_patchMap[DateTimeCustomFieldConfig$.name_] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.name_](this.name)
                    : (_patchMap[DateTimeCustomFieldConfig$.name_] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.name_].applyTo(
                        this.name,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.name_])
                as String
          : this.name,
      nullable: _patchMap.containsKey(DateTimeCustomFieldConfig$.nullable)
          ? ((_patchMap[DateTimeCustomFieldConfig$.nullable] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.nullable](
                        this.nullable,
                      )
                    : (_patchMap[DateTimeCustomFieldConfig$.nullable] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.nullable].applyTo(
                        this.nullable,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.nullable])
                as bool?
          : this.nullable,
      readonly: _patchMap.containsKey(DateTimeCustomFieldConfig$.readonly)
          ? ((_patchMap[DateTimeCustomFieldConfig$.readonly] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.readonly](
                        this.readonly,
                      )
                    : (_patchMap[DateTimeCustomFieldConfig$.readonly] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.readonly].applyTo(
                        this.readonly,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.readonly])
                as bool?
          : this.readonly,
      requiresPermission:
          _patchMap.containsKey(DateTimeCustomFieldConfig$.requiresPermission)
          ? ((_patchMap[DateTimeCustomFieldConfig$.requiresPermission]
                        is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.requiresPermission](
                        this.requiresPermission,
                      )
                    : (_patchMap[DateTimeCustomFieldConfig$.requiresPermission]
                          is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.requiresPermission]
                          .applyTo(this.requiresPermission)
                    : _patchMap[DateTimeCustomFieldConfig$.requiresPermission])
                as List<Permission>?
          : this.requiresPermission,
      step: _patchMap.containsKey(DateTimeCustomFieldConfig$.step)
          ? ((_patchMap[DateTimeCustomFieldConfig$.step] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.step](this.step)
                    : (_patchMap[DateTimeCustomFieldConfig$.step] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.step].applyTo(
                        this.step,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.step])
                as int?
          : this.step,
      type: _patchMap.containsKey(DateTimeCustomFieldConfig$.type)
          ? ((_patchMap[DateTimeCustomFieldConfig$.type] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.type](this.type)
                    : (_patchMap[DateTimeCustomFieldConfig$.type] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.type].applyTo(
                        this.type,
                      )
                    : _patchMap[DateTimeCustomFieldConfig$.type])
                as String
          : this.type,
      ui: _patchMap.containsKey(DateTimeCustomFieldConfig$.ui)
          ? ((_patchMap[DateTimeCustomFieldConfig$.ui] is Function)
                    ? _patchMap[DateTimeCustomFieldConfig$.ui](this.ui)
                    : (_patchMap[DateTimeCustomFieldConfig$.ui] is Patch)
                    ? _patchMap[DateTimeCustomFieldConfig$.ui].applyTo(this.ui)
                    : _patchMap[DateTimeCustomFieldConfig$.ui])
                as Map<String, dynamic>?
          : this.ui,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DateTimeCustomFieldConfig &&
        description == other.description &&
        internal == other.internal &&
        label == other.label &&
        list == other.list &&
        max == other.max &&
        min == other.min &&
        name == other.name &&
        nullable == other.nullable &&
        readonly == other.readonly &&
        requiresPermission == other.requiresPermission &&
        step == other.step &&
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
      this.max,
      this.min,
      this.name,
      this.nullable,
      this.readonly,
      this.requiresPermission,
      this.step,
      this.type,
      this.ui,
    );
  }

  @override
  String toString() {
    return 'DateTimeCustomFieldConfig(' +
        'description: ${description}' +
        ', ' +
        'internal: ${internal}' +
        ', ' +
        'label: ${label}' +
        ', ' +
        'list: ${list}' +
        ', ' +
        'max: ${max}' +
        ', ' +
        'min: ${min}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'nullable: ${nullable}' +
        ', ' +
        'readonly: ${readonly}' +
        ', ' +
        'requiresPermission: ${requiresPermission}' +
        ', ' +
        'step: ${step}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'ui: ${ui})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$DateTimeCustomFieldConfigToJson(this);
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

extension DateTimeCustomFieldConfigPropertyHelpers
    on DateTimeCustomFieldConfig {
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

  bool get hasMax {
    return this.max?.isNotEmpty == true;
  }

  bool get noMax {
    return this.max?.isEmpty ?? true;
  }

  String get maxRequired {
    return this.max ?? (throw StateError('max is required but was null'));
  }

  bool get hasMin {
    return this.min?.isNotEmpty == true;
  }

  bool get noMin {
    return this.min?.isEmpty ?? true;
  }

  String get minRequired {
    return this.min ?? (throw StateError('min is required but was null'));
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

  bool get hasStep {
    return this.step != null;
  }

  bool get noStep {
    return this.step == null;
  }

  int get stepRequired {
    return this.step ?? (throw StateError('step is required but was null'));
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

extension DateTimeCustomFieldConfigSerialization on DateTimeCustomFieldConfig {
  Map<String, dynamic> toJson() {
    return _$DateTimeCustomFieldConfigToJson(this);
  }
}

enum DateTimeCustomFieldConfig$ {
  description,
  internal,
  label,
  list,
  max,
  min,
  name_,
  nullable,
  readonly,
  requiresPermission,
  step,
  type,
  ui,
}

class DateTimeCustomFieldConfigPatch
    extends PatchBase<DateTimeCustomFieldConfig, DateTimeCustomFieldConfig$> {
  DateTimeCustomFieldConfig applyTo(DateTimeCustomFieldConfig entity) {
    return entity.patchWithDateTimeCustomFieldConfig(this);
  }

  DateTimeCustomFieldConfigPatch withDescription(List<LocalizedString>? value) {
    patchMap[DateTimeCustomFieldConfig$.description] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch updateDescriptionAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[DateTimeCustomFieldConfig$.description] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  DateTimeCustomFieldConfigPatch withInternal(bool? value) {
    patchMap[DateTimeCustomFieldConfig$.internal] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withLabel(List<LocalizedString>? value) {
    patchMap[DateTimeCustomFieldConfig$.label] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch updateLabelAt(
    int index,
    LocalizedStringPatch Function(LocalizedStringPatch) patch,
  ) {
    patchMap[DateTimeCustomFieldConfig$.label] = (List<dynamic> list) {
      var updatedList = List<LocalizedString>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(LocalizedStringPatch())
            .applyTo(updatedList[index] as LocalizedString);
      }
      return updatedList;
    };
    return this;
  }

  DateTimeCustomFieldConfigPatch withList(bool? value) {
    patchMap[DateTimeCustomFieldConfig$.list] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withMax(String? value) {
    patchMap[DateTimeCustomFieldConfig$.max] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withMin(String? value) {
    patchMap[DateTimeCustomFieldConfig$.min] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withName(String? value) {
    patchMap[DateTimeCustomFieldConfig$.name_] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withNullable(bool? value) {
    patchMap[DateTimeCustomFieldConfig$.nullable] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withReadonly(bool? value) {
    patchMap[DateTimeCustomFieldConfig$.readonly] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withRequiresPermission(
    List<Permission>? value,
  ) {
    patchMap[DateTimeCustomFieldConfig$.requiresPermission] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withStep(int? value) {
    patchMap[DateTimeCustomFieldConfig$.step] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withType(String? value) {
    patchMap[DateTimeCustomFieldConfig$.type] = value;
    return this;
  }

  DateTimeCustomFieldConfigPatch withUi(Map<String, dynamic>? value) {
    patchMap[DateTimeCustomFieldConfig$.ui] = value;
    return this;
  }
}

/// Field descriptors for [DateTimeCustomFieldConfig] query construction
abstract final class DateTimeCustomFieldConfigFields {
  static const description =
      Field<DateTimeCustomFieldConfig, List<LocalizedString>?>(
        'description',
        _$description,
      );

  static const internal = Field<DateTimeCustomFieldConfig, bool?>(
    'internal',
    _$internal,
  );

  static const label = Field<DateTimeCustomFieldConfig, List<LocalizedString>?>(
    'label',
    _$label,
  );

  static const list = Field<DateTimeCustomFieldConfig, bool>('list', _$list);

  static const max = Field<DateTimeCustomFieldConfig, String?>('max', _$max);

  static const min = Field<DateTimeCustomFieldConfig, String?>('min', _$min);

  static const name = Field<DateTimeCustomFieldConfig, String>('name', _$name);

  static const nullable = Field<DateTimeCustomFieldConfig, bool?>(
    'nullable',
    _$nullable,
  );

  static const readonly = Field<DateTimeCustomFieldConfig, bool?>(
    'readonly',
    _$readonly,
  );

  static const requiresPermission =
      Field<DateTimeCustomFieldConfig, List<Permission>?>(
        'requiresPermission',
        _$requiresPermission,
      );

  static const step = Field<DateTimeCustomFieldConfig, int?>('step', _$step);

  static const type = Field<DateTimeCustomFieldConfig, String>('type', _$type);

  static const ui = Field<DateTimeCustomFieldConfig, Map<String, dynamic>?>(
    'ui',
    _$ui,
  );

  static List<LocalizedString>? _$description(DateTimeCustomFieldConfig e) {
    return e.description;
  }

  static bool? _$internal(DateTimeCustomFieldConfig e) {
    return e.internal;
  }

  static List<LocalizedString>? _$label(DateTimeCustomFieldConfig e) {
    return e.label;
  }

  static bool _$list(DateTimeCustomFieldConfig e) {
    return e.list;
  }

  static String? _$max(DateTimeCustomFieldConfig e) {
    return e.max;
  }

  static String? _$min(DateTimeCustomFieldConfig e) {
    return e.min;
  }

  static String _$name(DateTimeCustomFieldConfig e) {
    return e.name;
  }

  static bool? _$nullable(DateTimeCustomFieldConfig e) {
    return e.nullable;
  }

  static bool? _$readonly(DateTimeCustomFieldConfig e) {
    return e.readonly;
  }

  static List<Permission>? _$requiresPermission(DateTimeCustomFieldConfig e) {
    return e.requiresPermission;
  }

  static int? _$step(DateTimeCustomFieldConfig e) {
    return e.step;
  }

  static String _$type(DateTimeCustomFieldConfig e) {
    return e.type;
  }

  static Map<String, dynamic>? _$ui(DateTimeCustomFieldConfig e) {
    return e.ui;
  }
}

extension DateTimeCustomFieldConfigCompareE on DateTimeCustomFieldConfig {
  Map<String, dynamic> compareToDateTimeCustomFieldConfig(
    DateTimeCustomFieldConfig other,
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

    if (max != other.max) {
      diff['max'] = () => other.max;
    }

    if (min != other.min) {
      diff['min'] = () => other.min;
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

    if (step != other.step) {
      diff['step'] = () => other.step;
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
