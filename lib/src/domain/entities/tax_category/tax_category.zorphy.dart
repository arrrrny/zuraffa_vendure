// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'tax_category.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class TaxCategory {
  TaxCategory({
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.id,
    required bool this.isDefault,
    required String this.name,
    required DateTime this.updatedAt,
  });

  factory TaxCategory.fromJson(Map<String, dynamic> json) =>
      _$TaxCategoryFromJson(json);

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String id;

  final bool isDefault;

  final String name;

  final DateTime updatedAt;

  TaxCategory copyWith({
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    bool? isDefault,
    String? name,
    DateTime? updatedAt,
  }) {
    return TaxCategory(
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      name: name ?? this.name,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  TaxCategory copyWithField<T>(Field<TaxCategory, T> field, T value) {
    switch (field.name) {
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'id':
        return copyWith(id: value as String);
      case 'isDefault':
        return copyWith(isDefault: value as bool);
      case 'name':
        return copyWith(name: value as String);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'TaxCategory has no settable field with this name',
        );
    }
  }

  TaxCategory copyWithTaxCategory({
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    bool? isDefault,
    String? name,
    DateTime? updatedAt,
  }) {
    return copyWith(
      createdAt: createdAt,
      customFields: customFields,
      id: id,
      isDefault: isDefault,
      name: name,
      updatedAt: updatedAt,
    );
  }

  TaxCategory patchWithTaxCategory([TaxCategoryPatch? patchInput]) {
    final _patcher = patchInput ?? TaxCategoryPatch();
    final _patchMap = _patcher.patchMap;
    return TaxCategory(
      createdAt: _patchMap.containsKey(TaxCategory$.createdAt)
          ? ((_patchMap[TaxCategory$.createdAt] is Function)
                    ? _patchMap[TaxCategory$.createdAt](this.createdAt)
                    : (_patchMap[TaxCategory$.createdAt] is Patch)
                    ? _patchMap[TaxCategory$.createdAt].applyTo(this.createdAt)
                    : _patchMap[TaxCategory$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(TaxCategory$.customFields)
          ? ((_patchMap[TaxCategory$.customFields] is Function)
                    ? _patchMap[TaxCategory$.customFields](this.customFields)
                    : (_patchMap[TaxCategory$.customFields] is Patch)
                    ? _patchMap[TaxCategory$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[TaxCategory$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      id: _patchMap.containsKey(TaxCategory$.id)
          ? ((_patchMap[TaxCategory$.id] is Function)
                    ? _patchMap[TaxCategory$.id](this.id)
                    : (_patchMap[TaxCategory$.id] is Patch)
                    ? _patchMap[TaxCategory$.id].applyTo(this.id)
                    : _patchMap[TaxCategory$.id])
                as String
          : this.id,
      isDefault: _patchMap.containsKey(TaxCategory$.isDefault)
          ? ((_patchMap[TaxCategory$.isDefault] is Function)
                    ? _patchMap[TaxCategory$.isDefault](this.isDefault)
                    : (_patchMap[TaxCategory$.isDefault] is Patch)
                    ? _patchMap[TaxCategory$.isDefault].applyTo(this.isDefault)
                    : _patchMap[TaxCategory$.isDefault])
                as bool
          : this.isDefault,
      name: _patchMap.containsKey(TaxCategory$.name_)
          ? ((_patchMap[TaxCategory$.name_] is Function)
                    ? _patchMap[TaxCategory$.name_](this.name)
                    : (_patchMap[TaxCategory$.name_] is Patch)
                    ? _patchMap[TaxCategory$.name_].applyTo(this.name)
                    : _patchMap[TaxCategory$.name_])
                as String
          : this.name,
      updatedAt: _patchMap.containsKey(TaxCategory$.updatedAt)
          ? ((_patchMap[TaxCategory$.updatedAt] is Function)
                    ? _patchMap[TaxCategory$.updatedAt](this.updatedAt)
                    : (_patchMap[TaxCategory$.updatedAt] is Patch)
                    ? _patchMap[TaxCategory$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[TaxCategory$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TaxCategory &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        id == other.id &&
        isDefault == other.isDefault &&
        name == other.name &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.createdAt,
      this.customFields,
      this.id,
      this.isDefault,
      this.name,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'TaxCategory(' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'isDefault: ${isDefault}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$TaxCategoryToJson(this);
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

extension TaxCategoryPropertyHelpers on TaxCategory {
  Map<String, dynamic> get customFieldsRequired {
    return this.customFields ??
        (throw StateError('customFields is required but was null'));
  }

  bool get hasCustomFields {
    return this.customFields?.isNotEmpty ?? false;
  }

  bool get noCustomFields {
    return this.customFields?.isEmpty ?? true;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }
}

extension TaxCategorySerialization on TaxCategory {
  Map<String, dynamic> toJson() {
    return _$TaxCategoryToJson(this);
  }
}

enum TaxCategory$ { createdAt, customFields, id, isDefault, name_, updatedAt }

class TaxCategoryPatch extends PatchBase<TaxCategory, TaxCategory$> {
  TaxCategory applyTo(TaxCategory entity) {
    return entity.patchWithTaxCategory(this);
  }

  TaxCategoryPatch withCreatedAt(DateTime? value) {
    patchMap[TaxCategory$.createdAt] = value;
    return this;
  }

  TaxCategoryPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[TaxCategory$.customFields] = value;
    return this;
  }

  TaxCategoryPatch withId(String? value) {
    patchMap[TaxCategory$.id] = value;
    return this;
  }

  TaxCategoryPatch withIsDefault(bool? value) {
    patchMap[TaxCategory$.isDefault] = value;
    return this;
  }

  TaxCategoryPatch withName(String? value) {
    patchMap[TaxCategory$.name_] = value;
    return this;
  }

  TaxCategoryPatch withUpdatedAt(DateTime? value) {
    patchMap[TaxCategory$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [TaxCategory] query construction
abstract final class TaxCategoryFields {
  static const createdAt = Field<TaxCategory, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<TaxCategory, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const id = Field<TaxCategory, String>('id', _$id);

  static const isDefault = Field<TaxCategory, bool>('isDefault', _$isDefault);

  static const name = Field<TaxCategory, String>('name', _$name);

  static const updatedAt = Field<TaxCategory, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static DateTime _$createdAt(TaxCategory e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(TaxCategory e) {
    return e.customFields;
  }

  static String _$id(TaxCategory e) {
    return e.id;
  }

  static bool _$isDefault(TaxCategory e) {
    return e.isDefault;
  }

  static String _$name(TaxCategory e) {
    return e.name;
  }

  static DateTime _$updatedAt(TaxCategory e) {
    return e.updatedAt;
  }
}

extension TaxCategoryCompareE on TaxCategory {
  Map<String, dynamic> compareToTaxCategory(TaxCategory other) {
    final Map<String, dynamic> diff = {};

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (isDefault != other.isDefault) {
      diff['isDefault'] = () => other.isDefault;
    }

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
