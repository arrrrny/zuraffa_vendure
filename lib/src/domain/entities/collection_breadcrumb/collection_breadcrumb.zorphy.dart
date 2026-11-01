// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'collection_breadcrumb.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CollectionBreadcrumb {
  CollectionBreadcrumb({
    required String this.id,
    required String this.name,
    required String this.slug,
  });

  factory CollectionBreadcrumb.fromJson(Map<String, dynamic> json) =>
      _$CollectionBreadcrumbFromJson(json);

  final String id;

  final String name;

  final String slug;

  CollectionBreadcrumb copyWith({String? id, String? name, String? slug}) {
    return CollectionBreadcrumb(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CollectionBreadcrumb copyWithField<T>(
    Field<CollectionBreadcrumb, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'id':
        return copyWith(id: value as String);
      case 'name':
        return copyWith(name: value as String);
      case 'slug':
        return copyWith(slug: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'CollectionBreadcrumb has no settable field with this name',
        );
    }
  }

  CollectionBreadcrumb copyWithCollectionBreadcrumb({
    String? id,
    String? name,
    String? slug,
  }) {
    return copyWith(id: id, name: name, slug: slug);
  }

  CollectionBreadcrumb patchWithCollectionBreadcrumb([
    CollectionBreadcrumbPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CollectionBreadcrumbPatch();
    final _patchMap = _patcher.patchMap;
    return CollectionBreadcrumb(
      id: _patchMap.containsKey(CollectionBreadcrumb$.id)
          ? ((_patchMap[CollectionBreadcrumb$.id] is Function)
                    ? _patchMap[CollectionBreadcrumb$.id](this.id)
                    : (_patchMap[CollectionBreadcrumb$.id] is Patch)
                    ? _patchMap[CollectionBreadcrumb$.id].applyTo(this.id)
                    : _patchMap[CollectionBreadcrumb$.id])
                as String
          : this.id,
      name: _patchMap.containsKey(CollectionBreadcrumb$.name_)
          ? ((_patchMap[CollectionBreadcrumb$.name_] is Function)
                    ? _patchMap[CollectionBreadcrumb$.name_](this.name)
                    : (_patchMap[CollectionBreadcrumb$.name_] is Patch)
                    ? _patchMap[CollectionBreadcrumb$.name_].applyTo(this.name)
                    : _patchMap[CollectionBreadcrumb$.name_])
                as String
          : this.name,
      slug: _patchMap.containsKey(CollectionBreadcrumb$.slug)
          ? ((_patchMap[CollectionBreadcrumb$.slug] is Function)
                    ? _patchMap[CollectionBreadcrumb$.slug](this.slug)
                    : (_patchMap[CollectionBreadcrumb$.slug] is Patch)
                    ? _patchMap[CollectionBreadcrumb$.slug].applyTo(this.slug)
                    : _patchMap[CollectionBreadcrumb$.slug])
                as String
          : this.slug,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CollectionBreadcrumb &&
        id == other.id &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return Object.hash(this.id, this.name, this.slug);
  }

  @override
  String toString() {
    return 'CollectionBreadcrumb(' +
        'id: ${id}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'slug: ${slug})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CollectionBreadcrumbToJson(this);
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

extension CollectionBreadcrumbPropertyHelpers on CollectionBreadcrumb {
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

  bool get hasSlug {
    return this.slug.isNotEmpty;
  }

  bool get noSlug {
    return this.slug.isEmpty;
  }
}

extension CollectionBreadcrumbSerialization on CollectionBreadcrumb {
  Map<String, dynamic> toJson() {
    return _$CollectionBreadcrumbToJson(this);
  }
}

enum CollectionBreadcrumb$ { id, name_, slug }

class CollectionBreadcrumbPatch
    extends PatchBase<CollectionBreadcrumb, CollectionBreadcrumb$> {
  CollectionBreadcrumb applyTo(CollectionBreadcrumb entity) {
    return entity.patchWithCollectionBreadcrumb(this);
  }

  CollectionBreadcrumbPatch withId(String? value) {
    patchMap[CollectionBreadcrumb$.id] = value;
    return this;
  }

  CollectionBreadcrumbPatch withName(String? value) {
    patchMap[CollectionBreadcrumb$.name_] = value;
    return this;
  }

  CollectionBreadcrumbPatch withSlug(String? value) {
    patchMap[CollectionBreadcrumb$.slug] = value;
    return this;
  }
}

/// Field descriptors for [CollectionBreadcrumb] query construction
abstract final class CollectionBreadcrumbFields {
  static const id = Field<CollectionBreadcrumb, String>('id', _$id);

  static const name = Field<CollectionBreadcrumb, String>('name', _$name);

  static const slug = Field<CollectionBreadcrumb, String>('slug', _$slug);

  static String _$id(CollectionBreadcrumb e) {
    return e.id;
  }

  static String _$name(CollectionBreadcrumb e) {
    return e.name;
  }

  static String _$slug(CollectionBreadcrumb e) {
    return e.slug;
  }
}

extension CollectionBreadcrumbCompareE on CollectionBreadcrumb {
  Map<String, dynamic> compareToCollectionBreadcrumb(
    CollectionBreadcrumb other,
  ) {
    final Map<String, dynamic> diff = {};

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (slug != other.slug) {
      diff['slug'] = () => other.slug;
    }
    return diff;
  }
}
