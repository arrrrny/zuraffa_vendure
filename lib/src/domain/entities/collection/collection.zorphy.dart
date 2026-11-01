// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'collection.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Collection {
  Collection({
    required List<Asset> this.assets,
    required List<CollectionBreadcrumb> this.breadcrumbs,
    List<Collection>? this.children,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.description,
    Asset? this.featuredAsset,
    required List<ConfigurableOperation> this.filters,
    required String this.id,
    LanguageCode? this.languageCode,
    required String this.name,
    Collection? this.parent,
    String? this.parentId,
    required int this.position,
    ProductVariantList? this.productVariants,
    required String this.slug,
    required List<CollectionTranslation> this.translations,
    required DateTime this.updatedAt,
  });

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  final List<Asset> assets;

  final List<CollectionBreadcrumb> breadcrumbs;

  final List<Collection>? children;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String description;

  final Asset? featuredAsset;

  final List<ConfigurableOperation> filters;

  final String id;

  final LanguageCode? languageCode;

  final String name;

  final Collection? parent;

  final String? parentId;

  final int position;

  final ProductVariantList? productVariants;

  final String slug;

  final List<CollectionTranslation> translations;

  final DateTime updatedAt;

  Collection copyWith({
    List<Asset>? assets,
    List<CollectionBreadcrumb>? breadcrumbs,
    List<Collection>? children,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? description,
    Asset? featuredAsset,
    List<ConfigurableOperation>? filters,
    String? id,
    LanguageCode? languageCode,
    String? name,
    Collection? parent,
    String? parentId,
    int? position,
    ProductVariantList? productVariants,
    String? slug,
    List<CollectionTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return Collection(
      assets: assets ?? this.assets,
      breadcrumbs: breadcrumbs ?? this.breadcrumbs,
      children: children ?? this.children,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      description: description ?? this.description,
      featuredAsset: featuredAsset ?? this.featuredAsset,
      filters: filters ?? this.filters,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      parent: parent ?? this.parent,
      parentId: parentId ?? this.parentId,
      position: position ?? this.position,
      productVariants: productVariants ?? this.productVariants,
      slug: slug ?? this.slug,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Collection copyWithField<T>(Field<Collection, T> field, T value) {
    switch (field.name) {
      case 'assets':
        return copyWith(assets: value as List<Asset>);
      case 'breadcrumbs':
        return copyWith(breadcrumbs: value as List<CollectionBreadcrumb>);
      case 'children':
        return copyWith(children: value as List<Collection>?);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'description':
        return copyWith(description: value as String);
      case 'featuredAsset':
        return copyWith(featuredAsset: value as Asset?);
      case 'filters':
        return copyWith(filters: value as List<ConfigurableOperation>);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode?);
      case 'name':
        return copyWith(name: value as String);
      case 'parent':
        return copyWith(parent: value as Collection?);
      case 'parentId':
        return copyWith(parentId: value as String?);
      case 'position':
        return copyWith(position: value as int);
      case 'productVariants':
        return copyWith(productVariants: value as ProductVariantList?);
      case 'slug':
        return copyWith(slug: value as String);
      case 'translations':
        return copyWith(translations: value as List<CollectionTranslation>);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Collection has no settable field with this name',
        );
    }
  }

  Collection copyWithCollection({
    List<Asset>? assets,
    List<CollectionBreadcrumb>? breadcrumbs,
    List<Collection>? children,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? description,
    Asset? featuredAsset,
    List<ConfigurableOperation>? filters,
    String? id,
    LanguageCode? languageCode,
    String? name,
    Collection? parent,
    String? parentId,
    int? position,
    ProductVariantList? productVariants,
    String? slug,
    List<CollectionTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return copyWith(
      assets: assets,
      breadcrumbs: breadcrumbs,
      children: children,
      createdAt: createdAt,
      customFields: customFields,
      description: description,
      featuredAsset: featuredAsset,
      filters: filters,
      id: id,
      languageCode: languageCode,
      name: name,
      parent: parent,
      parentId: parentId,
      position: position,
      productVariants: productVariants,
      slug: slug,
      translations: translations,
      updatedAt: updatedAt,
    );
  }

  Collection patchWithCollection([CollectionPatch? patchInput]) {
    final _patcher = patchInput ?? CollectionPatch();
    final _patchMap = _patcher.patchMap;
    return Collection(
      assets: _patchMap.containsKey(Collection$.assets)
          ? ((_patchMap[Collection$.assets] is Function)
                    ? _patchMap[Collection$.assets](this.assets)
                    : (_patchMap[Collection$.assets] is Patch)
                    ? _patchMap[Collection$.assets].applyTo(this.assets)
                    : _patchMap[Collection$.assets])
                as List<Asset>
          : this.assets,
      breadcrumbs: _patchMap.containsKey(Collection$.breadcrumbs)
          ? ((_patchMap[Collection$.breadcrumbs] is Function)
                    ? _patchMap[Collection$.breadcrumbs](this.breadcrumbs)
                    : (_patchMap[Collection$.breadcrumbs] is Patch)
                    ? _patchMap[Collection$.breadcrumbs].applyTo(
                        this.breadcrumbs,
                      )
                    : _patchMap[Collection$.breadcrumbs])
                as List<CollectionBreadcrumb>
          : this.breadcrumbs,
      children: _patchMap.containsKey(Collection$.children)
          ? ((_patchMap[Collection$.children] is Function)
                    ? _patchMap[Collection$.children](this.children)
                    : (_patchMap[Collection$.children] is Patch)
                    ? _patchMap[Collection$.children].applyTo(this.children)
                    : _patchMap[Collection$.children])
                as List<Collection>?
          : this.children,
      createdAt: _patchMap.containsKey(Collection$.createdAt)
          ? ((_patchMap[Collection$.createdAt] is Function)
                    ? _patchMap[Collection$.createdAt](this.createdAt)
                    : (_patchMap[Collection$.createdAt] is Patch)
                    ? _patchMap[Collection$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Collection$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(Collection$.customFields)
          ? ((_patchMap[Collection$.customFields] is Function)
                    ? _patchMap[Collection$.customFields](this.customFields)
                    : (_patchMap[Collection$.customFields] is Patch)
                    ? _patchMap[Collection$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[Collection$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      description: _patchMap.containsKey(Collection$.description)
          ? ((_patchMap[Collection$.description] is Function)
                    ? _patchMap[Collection$.description](this.description)
                    : (_patchMap[Collection$.description] is Patch)
                    ? _patchMap[Collection$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[Collection$.description])
                as String
          : this.description,
      featuredAsset: _patchMap.containsKey(Collection$.featuredAsset)
          ? ((_patchMap[Collection$.featuredAsset] is Function)
                    ? _patchMap[Collection$.featuredAsset](this.featuredAsset)
                    : (_patchMap[Collection$.featuredAsset] is Patch)
                    ? _patchMap[Collection$.featuredAsset].applyTo(
                        this.featuredAsset,
                      )
                    : _patchMap[Collection$.featuredAsset])
                as Asset?
          : this.featuredAsset,
      filters: _patchMap.containsKey(Collection$.filters)
          ? ((_patchMap[Collection$.filters] is Function)
                    ? _patchMap[Collection$.filters](this.filters)
                    : (_patchMap[Collection$.filters] is Patch)
                    ? _patchMap[Collection$.filters].applyTo(this.filters)
                    : _patchMap[Collection$.filters])
                as List<ConfigurableOperation>
          : this.filters,
      id: _patchMap.containsKey(Collection$.id)
          ? ((_patchMap[Collection$.id] is Function)
                    ? _patchMap[Collection$.id](this.id)
                    : (_patchMap[Collection$.id] is Patch)
                    ? _patchMap[Collection$.id].applyTo(this.id)
                    : _patchMap[Collection$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(Collection$.languageCode)
          ? ((_patchMap[Collection$.languageCode] is Function)
                    ? _patchMap[Collection$.languageCode](this.languageCode)
                    : (_patchMap[Collection$.languageCode] is Patch)
                    ? _patchMap[Collection$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[Collection$.languageCode])
                as LanguageCode?
          : this.languageCode,
      name: _patchMap.containsKey(Collection$.name_)
          ? ((_patchMap[Collection$.name_] is Function)
                    ? _patchMap[Collection$.name_](this.name)
                    : (_patchMap[Collection$.name_] is Patch)
                    ? _patchMap[Collection$.name_].applyTo(this.name)
                    : _patchMap[Collection$.name_])
                as String
          : this.name,
      parent: _patchMap.containsKey(Collection$.parent)
          ? ((_patchMap[Collection$.parent] is Function)
                    ? _patchMap[Collection$.parent](this.parent)
                    : (_patchMap[Collection$.parent] is Patch)
                    ? _patchMap[Collection$.parent].applyTo(this.parent)
                    : _patchMap[Collection$.parent])
                as Collection?
          : this.parent,
      parentId: _patchMap.containsKey(Collection$.parentId)
          ? ((_patchMap[Collection$.parentId] is Function)
                    ? _patchMap[Collection$.parentId](this.parentId)
                    : (_patchMap[Collection$.parentId] is Patch)
                    ? _patchMap[Collection$.parentId].applyTo(this.parentId)
                    : _patchMap[Collection$.parentId])
                as String?
          : this.parentId,
      position: _patchMap.containsKey(Collection$.position)
          ? ((_patchMap[Collection$.position] is Function)
                    ? _patchMap[Collection$.position](this.position)
                    : (_patchMap[Collection$.position] is Patch)
                    ? _patchMap[Collection$.position].applyTo(this.position)
                    : _patchMap[Collection$.position])
                as int
          : this.position,
      productVariants: _patchMap.containsKey(Collection$.productVariants)
          ? ((_patchMap[Collection$.productVariants] is Function)
                    ? _patchMap[Collection$.productVariants](
                        this.productVariants,
                      )
                    : (_patchMap[Collection$.productVariants] is Patch)
                    ? _patchMap[Collection$.productVariants].applyTo(
                        this.productVariants,
                      )
                    : _patchMap[Collection$.productVariants])
                as ProductVariantList?
          : this.productVariants,
      slug: _patchMap.containsKey(Collection$.slug)
          ? ((_patchMap[Collection$.slug] is Function)
                    ? _patchMap[Collection$.slug](this.slug)
                    : (_patchMap[Collection$.slug] is Patch)
                    ? _patchMap[Collection$.slug].applyTo(this.slug)
                    : _patchMap[Collection$.slug])
                as String
          : this.slug,
      translations: _patchMap.containsKey(Collection$.translations)
          ? ((_patchMap[Collection$.translations] is Function)
                    ? _patchMap[Collection$.translations](this.translations)
                    : (_patchMap[Collection$.translations] is Patch)
                    ? _patchMap[Collection$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[Collection$.translations])
                as List<CollectionTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(Collection$.updatedAt)
          ? ((_patchMap[Collection$.updatedAt] is Function)
                    ? _patchMap[Collection$.updatedAt](this.updatedAt)
                    : (_patchMap[Collection$.updatedAt] is Patch)
                    ? _patchMap[Collection$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Collection$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Collection &&
        assets == other.assets &&
        breadcrumbs == other.breadcrumbs &&
        children == other.children &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        description == other.description &&
        featuredAsset == other.featuredAsset &&
        filters == other.filters &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        parent == other.parent &&
        parentId == other.parentId &&
        position == other.position &&
        productVariants == other.productVariants &&
        slug == other.slug &&
        translations == other.translations &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.assets,
      this.breadcrumbs,
      this.children,
      this.createdAt,
      this.customFields,
      this.description,
      this.featuredAsset,
      this.filters,
      this.id,
      this.languageCode,
      this.name,
      this.parent,
      this.parentId,
      this.position,
      this.productVariants,
      this.slug,
      this.translations,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Collection(' +
        'assets: ${assets}' +
        ', ' +
        'breadcrumbs: ${breadcrumbs}' +
        ', ' +
        'children: ${children}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'featuredAsset: ${featuredAsset}' +
        ', ' +
        'filters: ${filters}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'parent: ${parent}' +
        ', ' +
        'parentId: ${parentId}' +
        ', ' +
        'position: ${position}' +
        ', ' +
        'productVariants: ${productVariants}' +
        ', ' +
        'slug: ${slug}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CollectionToJson(this);
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

extension CollectionPropertyHelpers on Collection {
  bool get hasAssets {
    return this.assets.isNotEmpty;
  }

  bool get noAssets {
    return this.assets.isEmpty;
  }

  bool get hasBreadcrumbs {
    return this.breadcrumbs.isNotEmpty;
  }

  bool get noBreadcrumbs {
    return this.breadcrumbs.isEmpty;
  }

  List<Collection> get childrenRequired {
    return this.children ??
        (throw StateError('children is required but was null'));
  }

  bool get hasChildren {
    return this.children?.isNotEmpty ?? false;
  }

  bool get noChildren {
    return this.children?.isEmpty ?? true;
  }

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

  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }

  bool get hasFeaturedAsset {
    return this.featuredAsset != null;
  }

  bool get noFeaturedAsset {
    return this.featuredAsset == null;
  }

  Asset get featuredAssetRequired {
    return this.featuredAsset ??
        (throw StateError('featuredAsset is required but was null'));
  }

  bool get hasFilters {
    return this.filters.isNotEmpty;
  }

  bool get noFilters {
    return this.filters.isEmpty;
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasLanguageCode {
    return this.languageCode != null;
  }

  bool get noLanguageCode {
    return this.languageCode == null;
  }

  LanguageCode get languageCodeRequired {
    return this.languageCode ??
        (throw StateError('languageCode is required but was null'));
  }

  bool get isLanguageCodeAf {
    return this.languageCode == LanguageCode.af;
  }

  bool get isLanguageCodeAk {
    return this.languageCode == LanguageCode.ak;
  }

  bool get isLanguageCodeAm {
    return this.languageCode == LanguageCode.am;
  }

  bool get isLanguageCodeAr {
    return this.languageCode == LanguageCode.ar;
  }

  bool get isLanguageCodeAs_ {
    return this.languageCode == LanguageCode.as_;
  }

  bool get isLanguageCodeAz {
    return this.languageCode == LanguageCode.az;
  }

  bool get isLanguageCodeBe {
    return this.languageCode == LanguageCode.be;
  }

  bool get isLanguageCodeBg {
    return this.languageCode == LanguageCode.bg;
  }

  bool get isLanguageCodeBm {
    return this.languageCode == LanguageCode.bm;
  }

  bool get isLanguageCodeBn {
    return this.languageCode == LanguageCode.bn;
  }

  bool get isLanguageCodeBo {
    return this.languageCode == LanguageCode.bo;
  }

  bool get isLanguageCodeBr {
    return this.languageCode == LanguageCode.br;
  }

  bool get isLanguageCodeBs {
    return this.languageCode == LanguageCode.bs;
  }

  bool get isLanguageCodeCa {
    return this.languageCode == LanguageCode.ca;
  }

  bool get isLanguageCodeCe {
    return this.languageCode == LanguageCode.ce;
  }

  bool get isLanguageCodeCo {
    return this.languageCode == LanguageCode.co;
  }

  bool get isLanguageCodeCs {
    return this.languageCode == LanguageCode.cs;
  }

  bool get isLanguageCodeCu {
    return this.languageCode == LanguageCode.cu;
  }

  bool get isLanguageCodeCy {
    return this.languageCode == LanguageCode.cy;
  }

  bool get isLanguageCodeDa {
    return this.languageCode == LanguageCode.da;
  }

  bool get isLanguageCodeDe {
    return this.languageCode == LanguageCode.de;
  }

  bool get isLanguageCodeDeAt {
    return this.languageCode == LanguageCode.deAt;
  }

  bool get isLanguageCodeDeCh {
    return this.languageCode == LanguageCode.deCh;
  }

  bool get isLanguageCodeDz {
    return this.languageCode == LanguageCode.dz;
  }

  bool get isLanguageCodeEe {
    return this.languageCode == LanguageCode.ee;
  }

  bool get isLanguageCodeEl {
    return this.languageCode == LanguageCode.el;
  }

  bool get isLanguageCodeEn {
    return this.languageCode == LanguageCode.en;
  }

  bool get isLanguageCodeEnAu {
    return this.languageCode == LanguageCode.enAu;
  }

  bool get isLanguageCodeEnCa {
    return this.languageCode == LanguageCode.enCa;
  }

  bool get isLanguageCodeEnGb {
    return this.languageCode == LanguageCode.enGb;
  }

  bool get isLanguageCodeEnUs {
    return this.languageCode == LanguageCode.enUs;
  }

  bool get isLanguageCodeEo {
    return this.languageCode == LanguageCode.eo;
  }

  bool get isLanguageCodeEs {
    return this.languageCode == LanguageCode.es;
  }

  bool get isLanguageCodeEsEs {
    return this.languageCode == LanguageCode.esEs;
  }

  bool get isLanguageCodeEsMx {
    return this.languageCode == LanguageCode.esMx;
  }

  bool get isLanguageCodeEt {
    return this.languageCode == LanguageCode.et;
  }

  bool get isLanguageCodeEu {
    return this.languageCode == LanguageCode.eu;
  }

  bool get isLanguageCodeFa {
    return this.languageCode == LanguageCode.fa;
  }

  bool get isLanguageCodeFaAf {
    return this.languageCode == LanguageCode.faAf;
  }

  bool get isLanguageCodeFf {
    return this.languageCode == LanguageCode.ff;
  }

  bool get isLanguageCodeFi {
    return this.languageCode == LanguageCode.fi;
  }

  bool get isLanguageCodeFo {
    return this.languageCode == LanguageCode.fo;
  }

  bool get isLanguageCodeFr {
    return this.languageCode == LanguageCode.fr;
  }

  bool get isLanguageCodeFrCa {
    return this.languageCode == LanguageCode.frCa;
  }

  bool get isLanguageCodeFrCh {
    return this.languageCode == LanguageCode.frCh;
  }

  bool get isLanguageCodeFy {
    return this.languageCode == LanguageCode.fy;
  }

  bool get isLanguageCodeGa {
    return this.languageCode == LanguageCode.ga;
  }

  bool get isLanguageCodeGd {
    return this.languageCode == LanguageCode.gd;
  }

  bool get isLanguageCodeGl {
    return this.languageCode == LanguageCode.gl;
  }

  bool get isLanguageCodeGu {
    return this.languageCode == LanguageCode.gu;
  }

  bool get isLanguageCodeGv {
    return this.languageCode == LanguageCode.gv;
  }

  bool get isLanguageCodeHa {
    return this.languageCode == LanguageCode.ha;
  }

  bool get isLanguageCodeHe {
    return this.languageCode == LanguageCode.he;
  }

  bool get isLanguageCodeHi {
    return this.languageCode == LanguageCode.hi;
  }

  bool get isLanguageCodeHr {
    return this.languageCode == LanguageCode.hr;
  }

  bool get isLanguageCodeHt {
    return this.languageCode == LanguageCode.ht;
  }

  bool get isLanguageCodeHu {
    return this.languageCode == LanguageCode.hu;
  }

  bool get isLanguageCodeHy {
    return this.languageCode == LanguageCode.hy;
  }

  bool get isLanguageCodeIa {
    return this.languageCode == LanguageCode.ia;
  }

  bool get isLanguageCodeId {
    return this.languageCode == LanguageCode.id;
  }

  bool get isLanguageCodeIg {
    return this.languageCode == LanguageCode.ig;
  }

  bool get isLanguageCodeIi {
    return this.languageCode == LanguageCode.ii;
  }

  bool get isLanguageCodeIs_ {
    return this.languageCode == LanguageCode.is_;
  }

  bool get isLanguageCodeIt {
    return this.languageCode == LanguageCode.it;
  }

  bool get isLanguageCodeJa {
    return this.languageCode == LanguageCode.ja;
  }

  bool get isLanguageCodeJv {
    return this.languageCode == LanguageCode.jv;
  }

  bool get isLanguageCodeKa {
    return this.languageCode == LanguageCode.ka;
  }

  bool get isLanguageCodeKi {
    return this.languageCode == LanguageCode.ki;
  }

  bool get isLanguageCodeKk {
    return this.languageCode == LanguageCode.kk;
  }

  bool get isLanguageCodeKl {
    return this.languageCode == LanguageCode.kl;
  }

  bool get isLanguageCodeKm {
    return this.languageCode == LanguageCode.km;
  }

  bool get isLanguageCodeKn {
    return this.languageCode == LanguageCode.kn;
  }

  bool get isLanguageCodeKo {
    return this.languageCode == LanguageCode.ko;
  }

  bool get isLanguageCodeKs {
    return this.languageCode == LanguageCode.ks;
  }

  bool get isLanguageCodeKu {
    return this.languageCode == LanguageCode.ku;
  }

  bool get isLanguageCodeKw {
    return this.languageCode == LanguageCode.kw;
  }

  bool get isLanguageCodeKy {
    return this.languageCode == LanguageCode.ky;
  }

  bool get isLanguageCodeLa {
    return this.languageCode == LanguageCode.la;
  }

  bool get isLanguageCodeLb {
    return this.languageCode == LanguageCode.lb;
  }

  bool get isLanguageCodeLg {
    return this.languageCode == LanguageCode.lg;
  }

  bool get isLanguageCodeLn {
    return this.languageCode == LanguageCode.ln;
  }

  bool get isLanguageCodeLo {
    return this.languageCode == LanguageCode.lo;
  }

  bool get isLanguageCodeLt {
    return this.languageCode == LanguageCode.lt;
  }

  bool get isLanguageCodeLu {
    return this.languageCode == LanguageCode.lu;
  }

  bool get isLanguageCodeLv {
    return this.languageCode == LanguageCode.lv;
  }

  bool get isLanguageCodeMg {
    return this.languageCode == LanguageCode.mg;
  }

  bool get isLanguageCodeMi {
    return this.languageCode == LanguageCode.mi;
  }

  bool get isLanguageCodeMk {
    return this.languageCode == LanguageCode.mk;
  }

  bool get isLanguageCodeMl {
    return this.languageCode == LanguageCode.ml;
  }

  bool get isLanguageCodeMn {
    return this.languageCode == LanguageCode.mn;
  }

  bool get isLanguageCodeMr {
    return this.languageCode == LanguageCode.mr;
  }

  bool get isLanguageCodeMs {
    return this.languageCode == LanguageCode.ms;
  }

  bool get isLanguageCodeMt {
    return this.languageCode == LanguageCode.mt;
  }

  bool get isLanguageCodeMy {
    return this.languageCode == LanguageCode.my;
  }

  bool get isLanguageCodeNb {
    return this.languageCode == LanguageCode.nb;
  }

  bool get isLanguageCodeNd {
    return this.languageCode == LanguageCode.nd;
  }

  bool get isLanguageCodeNe {
    return this.languageCode == LanguageCode.ne;
  }

  bool get isLanguageCodeNl {
    return this.languageCode == LanguageCode.nl;
  }

  bool get isLanguageCodeNlBe {
    return this.languageCode == LanguageCode.nlBe;
  }

  bool get isLanguageCodeNn {
    return this.languageCode == LanguageCode.nn;
  }

  bool get isLanguageCodeNy {
    return this.languageCode == LanguageCode.ny;
  }

  bool get isLanguageCodeOm {
    return this.languageCode == LanguageCode.om;
  }

  bool get isLanguageCodeOr {
    return this.languageCode == LanguageCode.or;
  }

  bool get isLanguageCodeOs {
    return this.languageCode == LanguageCode.os;
  }

  bool get isLanguageCodePa {
    return this.languageCode == LanguageCode.pa;
  }

  bool get isLanguageCodePl {
    return this.languageCode == LanguageCode.pl;
  }

  bool get isLanguageCodePs {
    return this.languageCode == LanguageCode.ps;
  }

  bool get isLanguageCodePt {
    return this.languageCode == LanguageCode.pt;
  }

  bool get isLanguageCodePtBr {
    return this.languageCode == LanguageCode.ptBr;
  }

  bool get isLanguageCodePtPt {
    return this.languageCode == LanguageCode.ptPt;
  }

  bool get isLanguageCodeQu {
    return this.languageCode == LanguageCode.qu;
  }

  bool get isLanguageCodeRm {
    return this.languageCode == LanguageCode.rm;
  }

  bool get isLanguageCodeRn {
    return this.languageCode == LanguageCode.rn;
  }

  bool get isLanguageCodeRo {
    return this.languageCode == LanguageCode.ro;
  }

  bool get isLanguageCodeRoMd {
    return this.languageCode == LanguageCode.roMd;
  }

  bool get isLanguageCodeRu {
    return this.languageCode == LanguageCode.ru;
  }

  bool get isLanguageCodeRw {
    return this.languageCode == LanguageCode.rw;
  }

  bool get isLanguageCodeSa {
    return this.languageCode == LanguageCode.sa;
  }

  bool get isLanguageCodeSd {
    return this.languageCode == LanguageCode.sd;
  }

  bool get isLanguageCodeSe {
    return this.languageCode == LanguageCode.se;
  }

  bool get isLanguageCodeSg {
    return this.languageCode == LanguageCode.sg;
  }

  bool get isLanguageCodeSi {
    return this.languageCode == LanguageCode.si;
  }

  bool get isLanguageCodeSk {
    return this.languageCode == LanguageCode.sk;
  }

  bool get isLanguageCodeSl {
    return this.languageCode == LanguageCode.sl;
  }

  bool get isLanguageCodeSm {
    return this.languageCode == LanguageCode.sm;
  }

  bool get isLanguageCodeSn {
    return this.languageCode == LanguageCode.sn;
  }

  bool get isLanguageCodeSo {
    return this.languageCode == LanguageCode.so;
  }

  bool get isLanguageCodeSq {
    return this.languageCode == LanguageCode.sq;
  }

  bool get isLanguageCodeSr {
    return this.languageCode == LanguageCode.sr;
  }

  bool get isLanguageCodeSt {
    return this.languageCode == LanguageCode.st;
  }

  bool get isLanguageCodeSu {
    return this.languageCode == LanguageCode.su;
  }

  bool get isLanguageCodeSv {
    return this.languageCode == LanguageCode.sv;
  }

  bool get isLanguageCodeSw {
    return this.languageCode == LanguageCode.sw;
  }

  bool get isLanguageCodeSwCd {
    return this.languageCode == LanguageCode.swCd;
  }

  bool get isLanguageCodeTa {
    return this.languageCode == LanguageCode.ta;
  }

  bool get isLanguageCodeTe {
    return this.languageCode == LanguageCode.te;
  }

  bool get isLanguageCodeTg {
    return this.languageCode == LanguageCode.tg;
  }

  bool get isLanguageCodeTh {
    return this.languageCode == LanguageCode.th;
  }

  bool get isLanguageCodeTi {
    return this.languageCode == LanguageCode.ti;
  }

  bool get isLanguageCodeTk {
    return this.languageCode == LanguageCode.tk;
  }

  bool get isLanguageCodeTo {
    return this.languageCode == LanguageCode.to;
  }

  bool get isLanguageCodeTr {
    return this.languageCode == LanguageCode.tr;
  }

  bool get isLanguageCodeTt {
    return this.languageCode == LanguageCode.tt;
  }

  bool get isLanguageCodeUg {
    return this.languageCode == LanguageCode.ug;
  }

  bool get isLanguageCodeUk {
    return this.languageCode == LanguageCode.uk;
  }

  bool get isLanguageCodeUr {
    return this.languageCode == LanguageCode.ur;
  }

  bool get isLanguageCodeUz {
    return this.languageCode == LanguageCode.uz;
  }

  bool get isLanguageCodeVi {
    return this.languageCode == LanguageCode.vi;
  }

  bool get isLanguageCodeVo {
    return this.languageCode == LanguageCode.vo;
  }

  bool get isLanguageCodeWo {
    return this.languageCode == LanguageCode.wo;
  }

  bool get isLanguageCodeXh {
    return this.languageCode == LanguageCode.xh;
  }

  bool get isLanguageCodeYi {
    return this.languageCode == LanguageCode.yi;
  }

  bool get isLanguageCodeYo {
    return this.languageCode == LanguageCode.yo;
  }

  bool get isLanguageCodeZh {
    return this.languageCode == LanguageCode.zh;
  }

  bool get isLanguageCodeZhHans {
    return this.languageCode == LanguageCode.zhHans;
  }

  bool get isLanguageCodeZhHant {
    return this.languageCode == LanguageCode.zhHant;
  }

  bool get isLanguageCodeZu {
    return this.languageCode == LanguageCode.zu;
  }

  bool get hasName {
    return this.name.isNotEmpty;
  }

  bool get noName {
    return this.name.isEmpty;
  }

  bool get hasParent {
    return this.parent != null;
  }

  bool get noParent {
    return this.parent == null;
  }

  Collection get parentRequired {
    return this.parent ?? (throw StateError('parent is required but was null'));
  }

  bool get hasParentId {
    return this.parentId?.isNotEmpty == true;
  }

  bool get noParentId {
    return this.parentId?.isEmpty ?? true;
  }

  String get parentIdRequired {
    return this.parentId ??
        (throw StateError('parentId is required but was null'));
  }

  bool get hasProductVariants {
    return this.productVariants != null;
  }

  bool get noProductVariants {
    return this.productVariants == null;
  }

  ProductVariantList get productVariantsRequired {
    return this.productVariants ??
        (throw StateError('productVariants is required but was null'));
  }

  bool get hasSlug {
    return this.slug.isNotEmpty;
  }

  bool get noSlug {
    return this.slug.isEmpty;
  }

  bool get hasTranslations {
    return this.translations.isNotEmpty;
  }

  bool get noTranslations {
    return this.translations.isEmpty;
  }
}

extension CollectionSerialization on Collection {
  Map<String, dynamic> toJson() {
    return _$CollectionToJson(this);
  }
}

enum Collection$ {
  assets,
  breadcrumbs,
  children,
  createdAt,
  customFields,
  description,
  featuredAsset,
  filters,
  id,
  languageCode,
  name_,
  parent,
  parentId,
  position,
  productVariants,
  slug,
  translations,
  updatedAt,
}

class CollectionPatch extends PatchBase<Collection, Collection$> {
  Collection applyTo(Collection entity) {
    return entity.patchWithCollection(this);
  }

  CollectionPatch withAssets(List<Asset>? value) {
    patchMap[Collection$.assets] = value;
    return this;
  }

  CollectionPatch updateAssetsAt(
    int index,
    AssetPatch Function(AssetPatch) patch,
  ) {
    patchMap[Collection$.assets] = (List<dynamic> list) {
      var updatedList = List<Asset>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(AssetPatch())
            .applyTo(updatedList[index] as Asset);
      }
      return updatedList;
    };
    return this;
  }

  CollectionPatch withBreadcrumbs(List<CollectionBreadcrumb>? value) {
    patchMap[Collection$.breadcrumbs] = value;
    return this;
  }

  CollectionPatch updateBreadcrumbsAt(
    int index,
    CollectionBreadcrumbPatch Function(CollectionBreadcrumbPatch) patch,
  ) {
    patchMap[Collection$.breadcrumbs] = (List<dynamic> list) {
      var updatedList = List<CollectionBreadcrumb>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(CollectionBreadcrumbPatch())
            .applyTo(updatedList[index] as CollectionBreadcrumb);
      }
      return updatedList;
    };
    return this;
  }

  CollectionPatch withChildren(List<Collection>? value) {
    patchMap[Collection$.children] = value;
    return this;
  }

  CollectionPatch updateChildrenAt(
    int index,
    CollectionPatch Function(CollectionPatch) patch,
  ) {
    patchMap[Collection$.children] = (List<dynamic> list) {
      var updatedList = List<Collection>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(CollectionPatch())
            .applyTo(updatedList[index] as Collection);
      }
      return updatedList;
    };
    return this;
  }

  CollectionPatch withCreatedAt(DateTime? value) {
    patchMap[Collection$.createdAt] = value;
    return this;
  }

  CollectionPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Collection$.customFields] = value;
    return this;
  }

  CollectionPatch withDescription(String? value) {
    patchMap[Collection$.description] = value;
    return this;
  }

  CollectionPatch withFeaturedAsset(Asset? value) {
    patchMap[Collection$.featuredAsset] = value;
    return this;
  }

  CollectionPatch withFeaturedAssetPatch(AssetPatch patch) {
    patchMap[Collection$.featuredAsset] = patch;
    return this;
  }

  CollectionPatch withFeaturedAssetPatchFunc(
    AssetPatch Function(AssetPatch) patch,
  ) {
    patchMap[Collection$.featuredAsset] = (dynamic current) {
      var currentPatch = AssetPatch();
      return patch(currentPatch).applyTo(current as Asset);
    };
    return this;
  }

  CollectionPatch withFilters(List<ConfigurableOperation>? value) {
    patchMap[Collection$.filters] = value;
    return this;
  }

  CollectionPatch updateFiltersAt(
    int index,
    ConfigurableOperationPatch Function(ConfigurableOperationPatch) patch,
  ) {
    patchMap[Collection$.filters] = (List<dynamic> list) {
      var updatedList = List<ConfigurableOperation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ConfigurableOperationPatch())
            .applyTo(updatedList[index] as ConfigurableOperation);
      }
      return updatedList;
    };
    return this;
  }

  CollectionPatch withId(String? value) {
    patchMap[Collection$.id] = value;
    return this;
  }

  CollectionPatch withLanguageCode(LanguageCode? value) {
    patchMap[Collection$.languageCode] = value;
    return this;
  }

  CollectionPatch withName(String? value) {
    patchMap[Collection$.name_] = value;
    return this;
  }

  CollectionPatch withParent(Collection? value) {
    patchMap[Collection$.parent] = value;
    return this;
  }

  CollectionPatch withParentPatch(CollectionPatch patch) {
    patchMap[Collection$.parent] = patch;
    return this;
  }

  CollectionPatch withParentPatchFunc(
    CollectionPatch Function(CollectionPatch) patch,
  ) {
    patchMap[Collection$.parent] = (dynamic current) {
      var currentPatch = CollectionPatch();
      return patch(currentPatch).applyTo(current as Collection);
    };
    return this;
  }

  CollectionPatch withParentId(String? value) {
    patchMap[Collection$.parentId] = value;
    return this;
  }

  CollectionPatch withPosition(int? value) {
    patchMap[Collection$.position] = value;
    return this;
  }

  CollectionPatch withProductVariants(ProductVariantList? value) {
    patchMap[Collection$.productVariants] = value;
    return this;
  }

  CollectionPatch withProductVariantsPatch(ProductVariantListPatch patch) {
    patchMap[Collection$.productVariants] = patch;
    return this;
  }

  CollectionPatch withProductVariantsPatchFunc(
    ProductVariantListPatch Function(ProductVariantListPatch) patch,
  ) {
    patchMap[Collection$.productVariants] = (dynamic current) {
      var currentPatch = ProductVariantListPatch();
      return patch(currentPatch).applyTo(current as ProductVariantList);
    };
    return this;
  }

  CollectionPatch withSlug(String? value) {
    patchMap[Collection$.slug] = value;
    return this;
  }

  CollectionPatch withTranslations(List<CollectionTranslation>? value) {
    patchMap[Collection$.translations] = value;
    return this;
  }

  CollectionPatch updateTranslationsAt(
    int index,
    CollectionTranslationPatch Function(CollectionTranslationPatch) patch,
  ) {
    patchMap[Collection$.translations] = (List<dynamic> list) {
      var updatedList = List<CollectionTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(CollectionTranslationPatch())
            .applyTo(updatedList[index] as CollectionTranslation);
      }
      return updatedList;
    };
    return this;
  }

  CollectionPatch withUpdatedAt(DateTime? value) {
    patchMap[Collection$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Collection] query construction
abstract final class CollectionFields {
  static const assets = Field<Collection, List<Asset>>('assets', _$assets);

  static const breadcrumbs = Field<Collection, List<CollectionBreadcrumb>>(
    'breadcrumbs',
    _$breadcrumbs,
  );

  static const children = Field<Collection, List<Collection>?>(
    'children',
    _$children,
  );

  static const createdAt = Field<Collection, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<Collection, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const description = Field<Collection, String>(
    'description',
    _$description,
  );

  static const featuredAsset = Field<Collection, Asset?>(
    'featuredAsset',
    _$featuredAsset,
  );

  static const filters = Field<Collection, List<ConfigurableOperation>>(
    'filters',
    _$filters,
  );

  static const id = Field<Collection, String>('id', _$id);

  static const languageCode = Field<Collection, LanguageCode?>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<Collection, String>('name', _$name);

  static const parent = Field<Collection, Collection?>('parent', _$parent);

  static const parentId = Field<Collection, String?>('parentId', _$parentId);

  static const position = Field<Collection, int>('position', _$position);

  static const productVariants = Field<Collection, ProductVariantList?>(
    'productVariants',
    _$productVariants,
  );

  static const slug = Field<Collection, String>('slug', _$slug);

  static const translations = Field<Collection, List<CollectionTranslation>>(
    'translations',
    _$translations,
  );

  static const updatedAt = Field<Collection, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static List<Asset> _$assets(Collection e) {
    return e.assets;
  }

  static List<CollectionBreadcrumb> _$breadcrumbs(Collection e) {
    return e.breadcrumbs;
  }

  static List<Collection>? _$children(Collection e) {
    return e.children;
  }

  static DateTime _$createdAt(Collection e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(Collection e) {
    return e.customFields;
  }

  static String _$description(Collection e) {
    return e.description;
  }

  static Asset? _$featuredAsset(Collection e) {
    return e.featuredAsset;
  }

  static List<ConfigurableOperation> _$filters(Collection e) {
    return e.filters;
  }

  static String _$id(Collection e) {
    return e.id;
  }

  static LanguageCode? _$languageCode(Collection e) {
    return e.languageCode;
  }

  static String _$name(Collection e) {
    return e.name;
  }

  static Collection? _$parent(Collection e) {
    return e.parent;
  }

  static String? _$parentId(Collection e) {
    return e.parentId;
  }

  static int _$position(Collection e) {
    return e.position;
  }

  static ProductVariantList? _$productVariants(Collection e) {
    return e.productVariants;
  }

  static String _$slug(Collection e) {
    return e.slug;
  }

  static List<CollectionTranslation> _$translations(Collection e) {
    return e.translations;
  }

  static DateTime _$updatedAt(Collection e) {
    return e.updatedAt;
  }
}

extension CollectionCompareE on Collection {
  Map<String, dynamic> compareToCollection(Collection other) {
    final Map<String, dynamic> diff = {};

    if (assets != other.assets) {
      diff['assets'] = () => other.assets;
    }

    if (breadcrumbs != other.breadcrumbs) {
      diff['breadcrumbs'] = () => other.breadcrumbs;
    }

    if (children != other.children) {
      diff['children'] = () => other.children;
    }

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (featuredAsset != other.featuredAsset) {
      diff['featuredAsset'] = () => other.featuredAsset;
    }

    if (filters != other.filters) {
      diff['filters'] = () => other.filters;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (languageCode != other.languageCode) {
      diff['languageCode'] = () => other.languageCode;
    }

    if (name != other.name) {
      diff['name'] = () => other.name;
    }

    if (parent != other.parent) {
      diff['parent'] = () => other.parent;
    }

    if (parentId != other.parentId) {
      diff['parentId'] = () => other.parentId;
    }

    if (position != other.position) {
      diff['position'] = () => other.position;
    }

    if (productVariants != other.productVariants) {
      diff['productVariants'] = () => other.productVariants;
    }

    if (slug != other.slug) {
      diff['slug'] = () => other.slug;
    }

    if (translations != other.translations) {
      diff['translations'] = () => other.translations;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
