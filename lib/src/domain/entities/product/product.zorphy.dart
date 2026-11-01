// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Product {
  Product({
    required List<Asset> this.assets,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.description,
    required bool this.enabled,
    required List<FacetValue> this.facetValues,
    Asset? this.featuredAsset,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    required List<ProductOptionGroup> this.optionGroups,
    required String this.slug,
    required List<ProductTranslation> this.translations,
    required DateTime this.updatedAt,
    required List<ProductVariant> this.variants,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  final List<Asset> assets;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String description;

  final bool enabled;

  final List<FacetValue> facetValues;

  final Asset? featuredAsset;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final List<ProductOptionGroup> optionGroups;

  final String slug;

  final List<ProductTranslation> translations;

  final DateTime updatedAt;

  final List<ProductVariant> variants;

  Product copyWith({
    List<Asset>? assets,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? description,
    bool? enabled,
    List<FacetValue>? facetValues,
    Asset? featuredAsset,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOptionGroup>? optionGroups,
    String? slug,
    List<ProductTranslation>? translations,
    DateTime? updatedAt,
    List<ProductVariant>? variants,
  }) {
    return Product(
      assets: assets ?? this.assets,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      description: description ?? this.description,
      enabled: enabled ?? this.enabled,
      facetValues: facetValues ?? this.facetValues,
      featuredAsset: featuredAsset ?? this.featuredAsset,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      optionGroups: optionGroups ?? this.optionGroups,
      slug: slug ?? this.slug,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
      variants: variants ?? this.variants,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Product copyWithField<T>(Field<Product, T> field, T value) {
    switch (field.name) {
      case 'assets':
        return copyWith(assets: value as List<Asset>);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'description':
        return copyWith(description: value as String);
      case 'enabled':
        return copyWith(enabled: value as bool);
      case 'facetValues':
        return copyWith(facetValues: value as List<FacetValue>);
      case 'featuredAsset':
        return copyWith(featuredAsset: value as Asset?);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode);
      case 'name':
        return copyWith(name: value as String);
      case 'optionGroups':
        return copyWith(optionGroups: value as List<ProductOptionGroup>);
      case 'slug':
        return copyWith(slug: value as String);
      case 'translations':
        return copyWith(translations: value as List<ProductTranslation>);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      case 'variants':
        return copyWith(variants: value as List<ProductVariant>);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Product has no settable field with this name',
        );
    }
  }

  Product copyWithProduct({
    List<Asset>? assets,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? description,
    bool? enabled,
    List<FacetValue>? facetValues,
    Asset? featuredAsset,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOptionGroup>? optionGroups,
    String? slug,
    List<ProductTranslation>? translations,
    DateTime? updatedAt,
    List<ProductVariant>? variants,
  }) {
    return copyWith(
      assets: assets,
      createdAt: createdAt,
      customFields: customFields,
      description: description,
      enabled: enabled,
      facetValues: facetValues,
      featuredAsset: featuredAsset,
      id: id,
      languageCode: languageCode,
      name: name,
      optionGroups: optionGroups,
      slug: slug,
      translations: translations,
      updatedAt: updatedAt,
      variants: variants,
    );
  }

  Product patchWithProduct([ProductPatch? patchInput]) {
    final _patcher = patchInput ?? ProductPatch();
    final _patchMap = _patcher.patchMap;
    return Product(
      assets: _patchMap.containsKey(Product$.assets)
          ? ((_patchMap[Product$.assets] is Function)
                    ? _patchMap[Product$.assets](this.assets)
                    : (_patchMap[Product$.assets] is Patch)
                    ? _patchMap[Product$.assets].applyTo(this.assets)
                    : _patchMap[Product$.assets])
                as List<Asset>
          : this.assets,
      createdAt: _patchMap.containsKey(Product$.createdAt)
          ? ((_patchMap[Product$.createdAt] is Function)
                    ? _patchMap[Product$.createdAt](this.createdAt)
                    : (_patchMap[Product$.createdAt] is Patch)
                    ? _patchMap[Product$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Product$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(Product$.customFields)
          ? ((_patchMap[Product$.customFields] is Function)
                    ? _patchMap[Product$.customFields](this.customFields)
                    : (_patchMap[Product$.customFields] is Patch)
                    ? _patchMap[Product$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[Product$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      description: _patchMap.containsKey(Product$.description)
          ? ((_patchMap[Product$.description] is Function)
                    ? _patchMap[Product$.description](this.description)
                    : (_patchMap[Product$.description] is Patch)
                    ? _patchMap[Product$.description].applyTo(this.description)
                    : _patchMap[Product$.description])
                as String
          : this.description,
      enabled: _patchMap.containsKey(Product$.enabled)
          ? ((_patchMap[Product$.enabled] is Function)
                    ? _patchMap[Product$.enabled](this.enabled)
                    : (_patchMap[Product$.enabled] is Patch)
                    ? _patchMap[Product$.enabled].applyTo(this.enabled)
                    : _patchMap[Product$.enabled])
                as bool
          : this.enabled,
      facetValues: _patchMap.containsKey(Product$.facetValues)
          ? ((_patchMap[Product$.facetValues] is Function)
                    ? _patchMap[Product$.facetValues](this.facetValues)
                    : (_patchMap[Product$.facetValues] is Patch)
                    ? _patchMap[Product$.facetValues].applyTo(this.facetValues)
                    : _patchMap[Product$.facetValues])
                as List<FacetValue>
          : this.facetValues,
      featuredAsset: _patchMap.containsKey(Product$.featuredAsset)
          ? ((_patchMap[Product$.featuredAsset] is Function)
                    ? _patchMap[Product$.featuredAsset](this.featuredAsset)
                    : (_patchMap[Product$.featuredAsset] is Patch)
                    ? _patchMap[Product$.featuredAsset].applyTo(
                        this.featuredAsset,
                      )
                    : _patchMap[Product$.featuredAsset])
                as Asset?
          : this.featuredAsset,
      id: _patchMap.containsKey(Product$.id)
          ? ((_patchMap[Product$.id] is Function)
                    ? _patchMap[Product$.id](this.id)
                    : (_patchMap[Product$.id] is Patch)
                    ? _patchMap[Product$.id].applyTo(this.id)
                    : _patchMap[Product$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(Product$.languageCode)
          ? ((_patchMap[Product$.languageCode] is Function)
                    ? _patchMap[Product$.languageCode](this.languageCode)
                    : (_patchMap[Product$.languageCode] is Patch)
                    ? _patchMap[Product$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[Product$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(Product$.name_)
          ? ((_patchMap[Product$.name_] is Function)
                    ? _patchMap[Product$.name_](this.name)
                    : (_patchMap[Product$.name_] is Patch)
                    ? _patchMap[Product$.name_].applyTo(this.name)
                    : _patchMap[Product$.name_])
                as String
          : this.name,
      optionGroups: _patchMap.containsKey(Product$.optionGroups)
          ? ((_patchMap[Product$.optionGroups] is Function)
                    ? _patchMap[Product$.optionGroups](this.optionGroups)
                    : (_patchMap[Product$.optionGroups] is Patch)
                    ? _patchMap[Product$.optionGroups].applyTo(
                        this.optionGroups,
                      )
                    : _patchMap[Product$.optionGroups])
                as List<ProductOptionGroup>
          : this.optionGroups,
      slug: _patchMap.containsKey(Product$.slug)
          ? ((_patchMap[Product$.slug] is Function)
                    ? _patchMap[Product$.slug](this.slug)
                    : (_patchMap[Product$.slug] is Patch)
                    ? _patchMap[Product$.slug].applyTo(this.slug)
                    : _patchMap[Product$.slug])
                as String
          : this.slug,
      translations: _patchMap.containsKey(Product$.translations)
          ? ((_patchMap[Product$.translations] is Function)
                    ? _patchMap[Product$.translations](this.translations)
                    : (_patchMap[Product$.translations] is Patch)
                    ? _patchMap[Product$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[Product$.translations])
                as List<ProductTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(Product$.updatedAt)
          ? ((_patchMap[Product$.updatedAt] is Function)
                    ? _patchMap[Product$.updatedAt](this.updatedAt)
                    : (_patchMap[Product$.updatedAt] is Patch)
                    ? _patchMap[Product$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Product$.updatedAt])
                as DateTime
          : this.updatedAt,
      variants: _patchMap.containsKey(Product$.variants)
          ? ((_patchMap[Product$.variants] is Function)
                    ? _patchMap[Product$.variants](this.variants)
                    : (_patchMap[Product$.variants] is Patch)
                    ? _patchMap[Product$.variants].applyTo(this.variants)
                    : _patchMap[Product$.variants])
                as List<ProductVariant>
          : this.variants,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product &&
        assets == other.assets &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        description == other.description &&
        enabled == other.enabled &&
        facetValues == other.facetValues &&
        featuredAsset == other.featuredAsset &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        optionGroups == other.optionGroups &&
        slug == other.slug &&
        translations == other.translations &&
        updatedAt == other.updatedAt &&
        variants == other.variants;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.assets,
      this.createdAt,
      this.customFields,
      this.description,
      this.enabled,
      this.facetValues,
      this.featuredAsset,
      this.id,
      this.languageCode,
      this.name,
      this.optionGroups,
      this.slug,
      this.translations,
      this.updatedAt,
      this.variants,
    );
  }

  @override
  String toString() {
    return 'Product(' +
        'assets: ${assets}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'enabled: ${enabled}' +
        ', ' +
        'facetValues: ${facetValues}' +
        ', ' +
        'featuredAsset: ${featuredAsset}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'optionGroups: ${optionGroups}' +
        ', ' +
        'slug: ${slug}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt}' +
        ', ' +
        'variants: ${variants})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductToJson(this);
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

extension ProductPropertyHelpers on Product {
  bool get hasAssets {
    return this.assets.isNotEmpty;
  }

  bool get noAssets {
    return this.assets.isEmpty;
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

  bool get hasFacetValues {
    return this.facetValues.isNotEmpty;
  }

  bool get noFacetValues {
    return this.facetValues.isEmpty;
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

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
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

  bool get hasOptionGroups {
    return this.optionGroups.isNotEmpty;
  }

  bool get noOptionGroups {
    return this.optionGroups.isEmpty;
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

  bool get hasVariants {
    return this.variants.isNotEmpty;
  }

  bool get noVariants {
    return this.variants.isEmpty;
  }
}

extension ProductSerialization on Product {
  Map<String, dynamic> toJson() {
    return _$ProductToJson(this);
  }
}

enum Product$ {
  assets,
  createdAt,
  customFields,
  description,
  enabled,
  facetValues,
  featuredAsset,
  id,
  languageCode,
  name_,
  optionGroups,
  slug,
  translations,
  updatedAt,
  variants,
}

class ProductPatch extends PatchBase<Product, Product$> {
  Product applyTo(Product entity) {
    return entity.patchWithProduct(this);
  }

  ProductPatch withAssets(List<Asset>? value) {
    patchMap[Product$.assets] = value;
    return this;
  }

  ProductPatch updateAssetsAt(
    int index,
    AssetPatch Function(AssetPatch) patch,
  ) {
    patchMap[Product$.assets] = (List<dynamic> list) {
      var updatedList = List<Asset>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(AssetPatch())
            .applyTo(updatedList[index] as Asset);
      }
      return updatedList;
    };
    return this;
  }

  ProductPatch withCreatedAt(DateTime? value) {
    patchMap[Product$.createdAt] = value;
    return this;
  }

  ProductPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Product$.customFields] = value;
    return this;
  }

  ProductPatch withDescription(String? value) {
    patchMap[Product$.description] = value;
    return this;
  }

  ProductPatch withEnabled(bool? value) {
    patchMap[Product$.enabled] = value;
    return this;
  }

  ProductPatch withFacetValues(List<FacetValue>? value) {
    patchMap[Product$.facetValues] = value;
    return this;
  }

  ProductPatch updateFacetValuesAt(
    int index,
    FacetValuePatch Function(FacetValuePatch) patch,
  ) {
    patchMap[Product$.facetValues] = (List<dynamic> list) {
      var updatedList = List<FacetValue>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FacetValuePatch())
            .applyTo(updatedList[index] as FacetValue);
      }
      return updatedList;
    };
    return this;
  }

  ProductPatch withFeaturedAsset(Asset? value) {
    patchMap[Product$.featuredAsset] = value;
    return this;
  }

  ProductPatch withFeaturedAssetPatch(AssetPatch patch) {
    patchMap[Product$.featuredAsset] = patch;
    return this;
  }

  ProductPatch withFeaturedAssetPatchFunc(
    AssetPatch Function(AssetPatch) patch,
  ) {
    patchMap[Product$.featuredAsset] = (dynamic current) {
      var currentPatch = AssetPatch();
      return patch(currentPatch).applyTo(current as Asset);
    };
    return this;
  }

  ProductPatch withId(String? value) {
    patchMap[Product$.id] = value;
    return this;
  }

  ProductPatch withLanguageCode(LanguageCode? value) {
    patchMap[Product$.languageCode] = value;
    return this;
  }

  ProductPatch withName(String? value) {
    patchMap[Product$.name_] = value;
    return this;
  }

  ProductPatch withOptionGroups(List<ProductOptionGroup>? value) {
    patchMap[Product$.optionGroups] = value;
    return this;
  }

  ProductPatch updateOptionGroupsAt(
    int index,
    ProductOptionGroupPatch Function(ProductOptionGroupPatch) patch,
  ) {
    patchMap[Product$.optionGroups] = (List<dynamic> list) {
      var updatedList = List<ProductOptionGroup>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductOptionGroupPatch())
            .applyTo(updatedList[index] as ProductOptionGroup);
      }
      return updatedList;
    };
    return this;
  }

  ProductPatch withSlug(String? value) {
    patchMap[Product$.slug] = value;
    return this;
  }

  ProductPatch withTranslations(List<ProductTranslation>? value) {
    patchMap[Product$.translations] = value;
    return this;
  }

  ProductPatch updateTranslationsAt(
    int index,
    ProductTranslationPatch Function(ProductTranslationPatch) patch,
  ) {
    patchMap[Product$.translations] = (List<dynamic> list) {
      var updatedList = List<ProductTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductTranslationPatch())
            .applyTo(updatedList[index] as ProductTranslation);
      }
      return updatedList;
    };
    return this;
  }

  ProductPatch withUpdatedAt(DateTime? value) {
    patchMap[Product$.updatedAt] = value;
    return this;
  }

  ProductPatch withVariants(List<ProductVariant>? value) {
    patchMap[Product$.variants] = value;
    return this;
  }

  ProductPatch updateVariantsAt(
    int index,
    ProductVariantPatch Function(ProductVariantPatch) patch,
  ) {
    patchMap[Product$.variants] = (List<dynamic> list) {
      var updatedList = List<ProductVariant>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductVariantPatch())
            .applyTo(updatedList[index] as ProductVariant);
      }
      return updatedList;
    };
    return this;
  }
}

/// Field descriptors for [Product] query construction
abstract final class ProductFields {
  static const assets = Field<Product, List<Asset>>('assets', _$assets);

  static const createdAt = Field<Product, DateTime>('createdAt', _$createdAt);

  static const customFields = Field<Product, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const description = Field<Product, String>(
    'description',
    _$description,
  );

  static const enabled = Field<Product, bool>('enabled', _$enabled);

  static const facetValues = Field<Product, List<FacetValue>>(
    'facetValues',
    _$facetValues,
  );

  static const featuredAsset = Field<Product, Asset?>(
    'featuredAsset',
    _$featuredAsset,
  );

  static const id = Field<Product, String>('id', _$id);

  static const languageCode = Field<Product, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<Product, String>('name', _$name);

  static const optionGroups = Field<Product, List<ProductOptionGroup>>(
    'optionGroups',
    _$optionGroups,
  );

  static const slug = Field<Product, String>('slug', _$slug);

  static const translations = Field<Product, List<ProductTranslation>>(
    'translations',
    _$translations,
  );

  static const updatedAt = Field<Product, DateTime>('updatedAt', _$updatedAt);

  static const variants = Field<Product, List<ProductVariant>>(
    'variants',
    _$variants,
  );

  static List<Asset> _$assets(Product e) {
    return e.assets;
  }

  static DateTime _$createdAt(Product e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(Product e) {
    return e.customFields;
  }

  static String _$description(Product e) {
    return e.description;
  }

  static bool _$enabled(Product e) {
    return e.enabled;
  }

  static List<FacetValue> _$facetValues(Product e) {
    return e.facetValues;
  }

  static Asset? _$featuredAsset(Product e) {
    return e.featuredAsset;
  }

  static String _$id(Product e) {
    return e.id;
  }

  static LanguageCode _$languageCode(Product e) {
    return e.languageCode;
  }

  static String _$name(Product e) {
    return e.name;
  }

  static List<ProductOptionGroup> _$optionGroups(Product e) {
    return e.optionGroups;
  }

  static String _$slug(Product e) {
    return e.slug;
  }

  static List<ProductTranslation> _$translations(Product e) {
    return e.translations;
  }

  static DateTime _$updatedAt(Product e) {
    return e.updatedAt;
  }

  static List<ProductVariant> _$variants(Product e) {
    return e.variants;
  }
}

extension ProductCompareE on Product {
  Map<String, dynamic> compareToProduct(Product other) {
    final Map<String, dynamic> diff = {};

    if (assets != other.assets) {
      diff['assets'] = () => other.assets;
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

    if (enabled != other.enabled) {
      diff['enabled'] = () => other.enabled;
    }

    if (facetValues != other.facetValues) {
      diff['facetValues'] = () => other.facetValues;
    }

    if (featuredAsset != other.featuredAsset) {
      diff['featuredAsset'] = () => other.featuredAsset;
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

    if (optionGroups != other.optionGroups) {
      diff['optionGroups'] = () => other.optionGroups;
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

    if (variants != other.variants) {
      diff['variants'] = () => other.variants;
    }
    return diff;
  }
}
