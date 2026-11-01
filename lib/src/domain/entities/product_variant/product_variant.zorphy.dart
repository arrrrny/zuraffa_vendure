// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product_variant.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ProductVariant {
  ProductVariant({
    required List<Asset> this.assets,
    required DateTime this.createdAt,
    required CurrencyCode this.currencyCode,
    Map<String, dynamic>? this.customFields,
    required List<FacetValue> this.facetValues,
    Asset? this.featuredAsset,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    required List<ProductOption> this.options,
    required double this.price,
    required double this.priceWithTax,
    required String this.productId,
    required String this.sku,
    required String this.stockLevel,
    required TaxCategory this.taxCategory,
    required List<ProductVariantTranslation> this.translations,
    required DateTime this.updatedAt,
  });

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);

  final List<Asset> assets;

  final DateTime createdAt;

  final CurrencyCode currencyCode;

  final Map<String, dynamic>? customFields;

  final List<FacetValue> facetValues;

  final Asset? featuredAsset;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final List<ProductOption> options;

  final double price;

  final double priceWithTax;

  final String productId;

  final String sku;

  final String stockLevel;

  final TaxCategory taxCategory;

  final List<ProductVariantTranslation> translations;

  final DateTime updatedAt;

  ProductVariant copyWith({
    List<Asset>? assets,
    DateTime? createdAt,
    CurrencyCode? currencyCode,
    Map<String, dynamic>? customFields,
    List<FacetValue>? facetValues,
    Asset? featuredAsset,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOption>? options,
    double? price,
    double? priceWithTax,
    String? productId,
    String? sku,
    String? stockLevel,
    TaxCategory? taxCategory,
    List<ProductVariantTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return ProductVariant(
      assets: assets ?? this.assets,
      createdAt: createdAt ?? this.createdAt,
      currencyCode: currencyCode ?? this.currencyCode,
      customFields: customFields ?? this.customFields,
      facetValues: facetValues ?? this.facetValues,
      featuredAsset: featuredAsset ?? this.featuredAsset,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      options: options ?? this.options,
      price: price ?? this.price,
      priceWithTax: priceWithTax ?? this.priceWithTax,
      productId: productId ?? this.productId,
      sku: sku ?? this.sku,
      stockLevel: stockLevel ?? this.stockLevel,
      taxCategory: taxCategory ?? this.taxCategory,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ProductVariant copyWithField<T>(Field<ProductVariant, T> field, T value) {
    switch (field.name) {
      case 'assets':
        return copyWith(assets: value as List<Asset>);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'currencyCode':
        return copyWith(currencyCode: value as CurrencyCode);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
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
      case 'options':
        return copyWith(options: value as List<ProductOption>);
      case 'price':
        return copyWith(price: value as double);
      case 'priceWithTax':
        return copyWith(priceWithTax: value as double);
      case 'productId':
        return copyWith(productId: value as String);
      case 'sku':
        return copyWith(sku: value as String);
      case 'stockLevel':
        return copyWith(stockLevel: value as String);
      case 'taxCategory':
        return copyWith(taxCategory: value as TaxCategory);
      case 'translations':
        return copyWith(translations: value as List<ProductVariantTranslation>);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ProductVariant has no settable field with this name',
        );
    }
  }

  ProductVariant copyWithProductVariant({
    List<Asset>? assets,
    DateTime? createdAt,
    CurrencyCode? currencyCode,
    Map<String, dynamic>? customFields,
    List<FacetValue>? facetValues,
    Asset? featuredAsset,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOption>? options,
    double? price,
    double? priceWithTax,
    String? productId,
    String? sku,
    String? stockLevel,
    TaxCategory? taxCategory,
    List<ProductVariantTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return copyWith(
      assets: assets,
      createdAt: createdAt,
      currencyCode: currencyCode,
      customFields: customFields,
      facetValues: facetValues,
      featuredAsset: featuredAsset,
      id: id,
      languageCode: languageCode,
      name: name,
      options: options,
      price: price,
      priceWithTax: priceWithTax,
      productId: productId,
      sku: sku,
      stockLevel: stockLevel,
      taxCategory: taxCategory,
      translations: translations,
      updatedAt: updatedAt,
    );
  }

  ProductVariant patchWithProductVariant([ProductVariantPatch? patchInput]) {
    final _patcher = patchInput ?? ProductVariantPatch();
    final _patchMap = _patcher.patchMap;
    return ProductVariant(
      assets: _patchMap.containsKey(ProductVariant$.assets)
          ? ((_patchMap[ProductVariant$.assets] is Function)
                    ? _patchMap[ProductVariant$.assets](this.assets)
                    : (_patchMap[ProductVariant$.assets] is Patch)
                    ? _patchMap[ProductVariant$.assets].applyTo(this.assets)
                    : _patchMap[ProductVariant$.assets])
                as List<Asset>
          : this.assets,
      createdAt: _patchMap.containsKey(ProductVariant$.createdAt)
          ? ((_patchMap[ProductVariant$.createdAt] is Function)
                    ? _patchMap[ProductVariant$.createdAt](this.createdAt)
                    : (_patchMap[ProductVariant$.createdAt] is Patch)
                    ? _patchMap[ProductVariant$.createdAt].applyTo(
                        this.createdAt,
                      )
                    : _patchMap[ProductVariant$.createdAt])
                as DateTime
          : this.createdAt,
      currencyCode: _patchMap.containsKey(ProductVariant$.currencyCode)
          ? ((_patchMap[ProductVariant$.currencyCode] is Function)
                    ? _patchMap[ProductVariant$.currencyCode](this.currencyCode)
                    : (_patchMap[ProductVariant$.currencyCode] is Patch)
                    ? _patchMap[ProductVariant$.currencyCode].applyTo(
                        this.currencyCode,
                      )
                    : _patchMap[ProductVariant$.currencyCode])
                as CurrencyCode
          : this.currencyCode,
      customFields: _patchMap.containsKey(ProductVariant$.customFields)
          ? ((_patchMap[ProductVariant$.customFields] is Function)
                    ? _patchMap[ProductVariant$.customFields](this.customFields)
                    : (_patchMap[ProductVariant$.customFields] is Patch)
                    ? _patchMap[ProductVariant$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[ProductVariant$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      facetValues: _patchMap.containsKey(ProductVariant$.facetValues)
          ? ((_patchMap[ProductVariant$.facetValues] is Function)
                    ? _patchMap[ProductVariant$.facetValues](this.facetValues)
                    : (_patchMap[ProductVariant$.facetValues] is Patch)
                    ? _patchMap[ProductVariant$.facetValues].applyTo(
                        this.facetValues,
                      )
                    : _patchMap[ProductVariant$.facetValues])
                as List<FacetValue>
          : this.facetValues,
      featuredAsset: _patchMap.containsKey(ProductVariant$.featuredAsset)
          ? ((_patchMap[ProductVariant$.featuredAsset] is Function)
                    ? _patchMap[ProductVariant$.featuredAsset](
                        this.featuredAsset,
                      )
                    : (_patchMap[ProductVariant$.featuredAsset] is Patch)
                    ? _patchMap[ProductVariant$.featuredAsset].applyTo(
                        this.featuredAsset,
                      )
                    : _patchMap[ProductVariant$.featuredAsset])
                as Asset?
          : this.featuredAsset,
      id: _patchMap.containsKey(ProductVariant$.id)
          ? ((_patchMap[ProductVariant$.id] is Function)
                    ? _patchMap[ProductVariant$.id](this.id)
                    : (_patchMap[ProductVariant$.id] is Patch)
                    ? _patchMap[ProductVariant$.id].applyTo(this.id)
                    : _patchMap[ProductVariant$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(ProductVariant$.languageCode)
          ? ((_patchMap[ProductVariant$.languageCode] is Function)
                    ? _patchMap[ProductVariant$.languageCode](this.languageCode)
                    : (_patchMap[ProductVariant$.languageCode] is Patch)
                    ? _patchMap[ProductVariant$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[ProductVariant$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(ProductVariant$.name_)
          ? ((_patchMap[ProductVariant$.name_] is Function)
                    ? _patchMap[ProductVariant$.name_](this.name)
                    : (_patchMap[ProductVariant$.name_] is Patch)
                    ? _patchMap[ProductVariant$.name_].applyTo(this.name)
                    : _patchMap[ProductVariant$.name_])
                as String
          : this.name,
      options: _patchMap.containsKey(ProductVariant$.options)
          ? ((_patchMap[ProductVariant$.options] is Function)
                    ? _patchMap[ProductVariant$.options](this.options)
                    : (_patchMap[ProductVariant$.options] is Patch)
                    ? _patchMap[ProductVariant$.options].applyTo(this.options)
                    : _patchMap[ProductVariant$.options])
                as List<ProductOption>
          : this.options,
      price: _patchMap.containsKey(ProductVariant$.price)
          ? ((_patchMap[ProductVariant$.price] is Function)
                    ? _patchMap[ProductVariant$.price](this.price)
                    : (_patchMap[ProductVariant$.price] is Patch)
                    ? _patchMap[ProductVariant$.price].applyTo(this.price)
                    : _patchMap[ProductVariant$.price])
                as double
          : this.price,
      priceWithTax: _patchMap.containsKey(ProductVariant$.priceWithTax)
          ? ((_patchMap[ProductVariant$.priceWithTax] is Function)
                    ? _patchMap[ProductVariant$.priceWithTax](this.priceWithTax)
                    : (_patchMap[ProductVariant$.priceWithTax] is Patch)
                    ? _patchMap[ProductVariant$.priceWithTax].applyTo(
                        this.priceWithTax,
                      )
                    : _patchMap[ProductVariant$.priceWithTax])
                as double
          : this.priceWithTax,
      productId: _patchMap.containsKey(ProductVariant$.productId)
          ? ((_patchMap[ProductVariant$.productId] is Function)
                    ? _patchMap[ProductVariant$.productId](this.productId)
                    : (_patchMap[ProductVariant$.productId] is Patch)
                    ? _patchMap[ProductVariant$.productId].applyTo(
                        this.productId,
                      )
                    : _patchMap[ProductVariant$.productId])
                as String
          : this.productId,
      sku: _patchMap.containsKey(ProductVariant$.sku)
          ? ((_patchMap[ProductVariant$.sku] is Function)
                    ? _patchMap[ProductVariant$.sku](this.sku)
                    : (_patchMap[ProductVariant$.sku] is Patch)
                    ? _patchMap[ProductVariant$.sku].applyTo(this.sku)
                    : _patchMap[ProductVariant$.sku])
                as String
          : this.sku,
      stockLevel: _patchMap.containsKey(ProductVariant$.stockLevel)
          ? ((_patchMap[ProductVariant$.stockLevel] is Function)
                    ? _patchMap[ProductVariant$.stockLevel](this.stockLevel)
                    : (_patchMap[ProductVariant$.stockLevel] is Patch)
                    ? _patchMap[ProductVariant$.stockLevel].applyTo(
                        this.stockLevel,
                      )
                    : _patchMap[ProductVariant$.stockLevel])
                as String
          : this.stockLevel,
      taxCategory: _patchMap.containsKey(ProductVariant$.taxCategory)
          ? ((_patchMap[ProductVariant$.taxCategory] is Function)
                    ? _patchMap[ProductVariant$.taxCategory](this.taxCategory)
                    : (_patchMap[ProductVariant$.taxCategory] is Patch)
                    ? _patchMap[ProductVariant$.taxCategory].applyTo(
                        this.taxCategory,
                      )
                    : _patchMap[ProductVariant$.taxCategory])
                as TaxCategory
          : this.taxCategory,
      translations: _patchMap.containsKey(ProductVariant$.translations)
          ? ((_patchMap[ProductVariant$.translations] is Function)
                    ? _patchMap[ProductVariant$.translations](this.translations)
                    : (_patchMap[ProductVariant$.translations] is Patch)
                    ? _patchMap[ProductVariant$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[ProductVariant$.translations])
                as List<ProductVariantTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(ProductVariant$.updatedAt)
          ? ((_patchMap[ProductVariant$.updatedAt] is Function)
                    ? _patchMap[ProductVariant$.updatedAt](this.updatedAt)
                    : (_patchMap[ProductVariant$.updatedAt] is Patch)
                    ? _patchMap[ProductVariant$.updatedAt].applyTo(
                        this.updatedAt,
                      )
                    : _patchMap[ProductVariant$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProductVariant &&
        assets == other.assets &&
        createdAt == other.createdAt &&
        currencyCode == other.currencyCode &&
        customFields == other.customFields &&
        facetValues == other.facetValues &&
        featuredAsset == other.featuredAsset &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        options == other.options &&
        price == other.price &&
        priceWithTax == other.priceWithTax &&
        productId == other.productId &&
        sku == other.sku &&
        stockLevel == other.stockLevel &&
        taxCategory == other.taxCategory &&
        translations == other.translations &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.assets,
      this.createdAt,
      this.currencyCode,
      this.customFields,
      this.facetValues,
      this.featuredAsset,
      this.id,
      this.languageCode,
      this.name,
      this.options,
      this.price,
      this.priceWithTax,
      this.productId,
      this.sku,
      this.stockLevel,
      this.taxCategory,
      this.translations,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'ProductVariant(' +
        'assets: ${assets}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'currencyCode: ${currencyCode}' +
        ', ' +
        'customFields: ${customFields}' +
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
        'options: ${options}' +
        ', ' +
        'price: ${price}' +
        ', ' +
        'priceWithTax: ${priceWithTax}' +
        ', ' +
        'productId: ${productId}' +
        ', ' +
        'sku: ${sku}' +
        ', ' +
        'stockLevel: ${stockLevel}' +
        ', ' +
        'taxCategory: ${taxCategory}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductVariantToJson(this);
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

extension ProductVariantPropertyHelpers on ProductVariant {
  bool get hasAssets {
    return this.assets.isNotEmpty;
  }

  bool get noAssets {
    return this.assets.isEmpty;
  }

  bool get isCurrencyCodeAed {
    return this.currencyCode == CurrencyCode.aed;
  }

  bool get isCurrencyCodeAfn {
    return this.currencyCode == CurrencyCode.afn;
  }

  bool get isCurrencyCodeAll {
    return this.currencyCode == CurrencyCode.all;
  }

  bool get isCurrencyCodeAmd {
    return this.currencyCode == CurrencyCode.amd;
  }

  bool get isCurrencyCodeAng {
    return this.currencyCode == CurrencyCode.ang;
  }

  bool get isCurrencyCodeAoa {
    return this.currencyCode == CurrencyCode.aoa;
  }

  bool get isCurrencyCodeArs {
    return this.currencyCode == CurrencyCode.ars;
  }

  bool get isCurrencyCodeAud {
    return this.currencyCode == CurrencyCode.aud;
  }

  bool get isCurrencyCodeAwg {
    return this.currencyCode == CurrencyCode.awg;
  }

  bool get isCurrencyCodeAzn {
    return this.currencyCode == CurrencyCode.azn;
  }

  bool get isCurrencyCodeBam {
    return this.currencyCode == CurrencyCode.bam;
  }

  bool get isCurrencyCodeBbd {
    return this.currencyCode == CurrencyCode.bbd;
  }

  bool get isCurrencyCodeBdt {
    return this.currencyCode == CurrencyCode.bdt;
  }

  bool get isCurrencyCodeBgn {
    return this.currencyCode == CurrencyCode.bgn;
  }

  bool get isCurrencyCodeBhd {
    return this.currencyCode == CurrencyCode.bhd;
  }

  bool get isCurrencyCodeBif {
    return this.currencyCode == CurrencyCode.bif;
  }

  bool get isCurrencyCodeBmd {
    return this.currencyCode == CurrencyCode.bmd;
  }

  bool get isCurrencyCodeBnd {
    return this.currencyCode == CurrencyCode.bnd;
  }

  bool get isCurrencyCodeBob {
    return this.currencyCode == CurrencyCode.bob;
  }

  bool get isCurrencyCodeBrl {
    return this.currencyCode == CurrencyCode.brl;
  }

  bool get isCurrencyCodeBsd {
    return this.currencyCode == CurrencyCode.bsd;
  }

  bool get isCurrencyCodeBtn {
    return this.currencyCode == CurrencyCode.btn;
  }

  bool get isCurrencyCodeBwp {
    return this.currencyCode == CurrencyCode.bwp;
  }

  bool get isCurrencyCodeByn {
    return this.currencyCode == CurrencyCode.byn;
  }

  bool get isCurrencyCodeBzd {
    return this.currencyCode == CurrencyCode.bzd;
  }

  bool get isCurrencyCodeCad {
    return this.currencyCode == CurrencyCode.cad;
  }

  bool get isCurrencyCodeCdf {
    return this.currencyCode == CurrencyCode.cdf;
  }

  bool get isCurrencyCodeChf {
    return this.currencyCode == CurrencyCode.chf;
  }

  bool get isCurrencyCodeClp {
    return this.currencyCode == CurrencyCode.clp;
  }

  bool get isCurrencyCodeCny {
    return this.currencyCode == CurrencyCode.cny;
  }

  bool get isCurrencyCodeCop {
    return this.currencyCode == CurrencyCode.cop;
  }

  bool get isCurrencyCodeCrc {
    return this.currencyCode == CurrencyCode.crc;
  }

  bool get isCurrencyCodeCuc {
    return this.currencyCode == CurrencyCode.cuc;
  }

  bool get isCurrencyCodeCup {
    return this.currencyCode == CurrencyCode.cup;
  }

  bool get isCurrencyCodeCve {
    return this.currencyCode == CurrencyCode.cve;
  }

  bool get isCurrencyCodeCzk {
    return this.currencyCode == CurrencyCode.czk;
  }

  bool get isCurrencyCodeDjf {
    return this.currencyCode == CurrencyCode.djf;
  }

  bool get isCurrencyCodeDkk {
    return this.currencyCode == CurrencyCode.dkk;
  }

  bool get isCurrencyCodeDop {
    return this.currencyCode == CurrencyCode.dop;
  }

  bool get isCurrencyCodeDzd {
    return this.currencyCode == CurrencyCode.dzd;
  }

  bool get isCurrencyCodeEgp {
    return this.currencyCode == CurrencyCode.egp;
  }

  bool get isCurrencyCodeErn {
    return this.currencyCode == CurrencyCode.ern;
  }

  bool get isCurrencyCodeEtb {
    return this.currencyCode == CurrencyCode.etb;
  }

  bool get isCurrencyCodeEur {
    return this.currencyCode == CurrencyCode.eur;
  }

  bool get isCurrencyCodeFjd {
    return this.currencyCode == CurrencyCode.fjd;
  }

  bool get isCurrencyCodeFkp {
    return this.currencyCode == CurrencyCode.fkp;
  }

  bool get isCurrencyCodeGbp {
    return this.currencyCode == CurrencyCode.gbp;
  }

  bool get isCurrencyCodeGel {
    return this.currencyCode == CurrencyCode.gel;
  }

  bool get isCurrencyCodeGhs {
    return this.currencyCode == CurrencyCode.ghs;
  }

  bool get isCurrencyCodeGip {
    return this.currencyCode == CurrencyCode.gip;
  }

  bool get isCurrencyCodeGmd {
    return this.currencyCode == CurrencyCode.gmd;
  }

  bool get isCurrencyCodeGnf {
    return this.currencyCode == CurrencyCode.gnf;
  }

  bool get isCurrencyCodeGtq {
    return this.currencyCode == CurrencyCode.gtq;
  }

  bool get isCurrencyCodeGyd {
    return this.currencyCode == CurrencyCode.gyd;
  }

  bool get isCurrencyCodeHkd {
    return this.currencyCode == CurrencyCode.hkd;
  }

  bool get isCurrencyCodeHnl {
    return this.currencyCode == CurrencyCode.hnl;
  }

  bool get isCurrencyCodeHrk {
    return this.currencyCode == CurrencyCode.hrk;
  }

  bool get isCurrencyCodeHtg {
    return this.currencyCode == CurrencyCode.htg;
  }

  bool get isCurrencyCodeHuf {
    return this.currencyCode == CurrencyCode.huf;
  }

  bool get isCurrencyCodeIdr {
    return this.currencyCode == CurrencyCode.idr;
  }

  bool get isCurrencyCodeIls {
    return this.currencyCode == CurrencyCode.ils;
  }

  bool get isCurrencyCodeInr {
    return this.currencyCode == CurrencyCode.inr;
  }

  bool get isCurrencyCodeIqd {
    return this.currencyCode == CurrencyCode.iqd;
  }

  bool get isCurrencyCodeIrr {
    return this.currencyCode == CurrencyCode.irr;
  }

  bool get isCurrencyCodeIsk {
    return this.currencyCode == CurrencyCode.isk;
  }

  bool get isCurrencyCodeJmd {
    return this.currencyCode == CurrencyCode.jmd;
  }

  bool get isCurrencyCodeJod {
    return this.currencyCode == CurrencyCode.jod;
  }

  bool get isCurrencyCodeJpy {
    return this.currencyCode == CurrencyCode.jpy;
  }

  bool get isCurrencyCodeKes {
    return this.currencyCode == CurrencyCode.kes;
  }

  bool get isCurrencyCodeKgs {
    return this.currencyCode == CurrencyCode.kgs;
  }

  bool get isCurrencyCodeKhr {
    return this.currencyCode == CurrencyCode.khr;
  }

  bool get isCurrencyCodeKmf {
    return this.currencyCode == CurrencyCode.kmf;
  }

  bool get isCurrencyCodeKpw {
    return this.currencyCode == CurrencyCode.kpw;
  }

  bool get isCurrencyCodeKrw {
    return this.currencyCode == CurrencyCode.krw;
  }

  bool get isCurrencyCodeKwd {
    return this.currencyCode == CurrencyCode.kwd;
  }

  bool get isCurrencyCodeKyd {
    return this.currencyCode == CurrencyCode.kyd;
  }

  bool get isCurrencyCodeKzt {
    return this.currencyCode == CurrencyCode.kzt;
  }

  bool get isCurrencyCodeLak {
    return this.currencyCode == CurrencyCode.lak;
  }

  bool get isCurrencyCodeLbp {
    return this.currencyCode == CurrencyCode.lbp;
  }

  bool get isCurrencyCodeLkr {
    return this.currencyCode == CurrencyCode.lkr;
  }

  bool get isCurrencyCodeLrd {
    return this.currencyCode == CurrencyCode.lrd;
  }

  bool get isCurrencyCodeLsl {
    return this.currencyCode == CurrencyCode.lsl;
  }

  bool get isCurrencyCodeLyd {
    return this.currencyCode == CurrencyCode.lyd;
  }

  bool get isCurrencyCodeMad {
    return this.currencyCode == CurrencyCode.mad;
  }

  bool get isCurrencyCodeMdl {
    return this.currencyCode == CurrencyCode.mdl;
  }

  bool get isCurrencyCodeMga {
    return this.currencyCode == CurrencyCode.mga;
  }

  bool get isCurrencyCodeMkd {
    return this.currencyCode == CurrencyCode.mkd;
  }

  bool get isCurrencyCodeMmk {
    return this.currencyCode == CurrencyCode.mmk;
  }

  bool get isCurrencyCodeMnt {
    return this.currencyCode == CurrencyCode.mnt;
  }

  bool get isCurrencyCodeMop {
    return this.currencyCode == CurrencyCode.mop;
  }

  bool get isCurrencyCodeMru {
    return this.currencyCode == CurrencyCode.mru;
  }

  bool get isCurrencyCodeMur {
    return this.currencyCode == CurrencyCode.mur;
  }

  bool get isCurrencyCodeMvr {
    return this.currencyCode == CurrencyCode.mvr;
  }

  bool get isCurrencyCodeMwk {
    return this.currencyCode == CurrencyCode.mwk;
  }

  bool get isCurrencyCodeMxn {
    return this.currencyCode == CurrencyCode.mxn;
  }

  bool get isCurrencyCodeMyr {
    return this.currencyCode == CurrencyCode.myr;
  }

  bool get isCurrencyCodeMzn {
    return this.currencyCode == CurrencyCode.mzn;
  }

  bool get isCurrencyCodeNad {
    return this.currencyCode == CurrencyCode.nad;
  }

  bool get isCurrencyCodeNgn {
    return this.currencyCode == CurrencyCode.ngn;
  }

  bool get isCurrencyCodeNio {
    return this.currencyCode == CurrencyCode.nio;
  }

  bool get isCurrencyCodeNok {
    return this.currencyCode == CurrencyCode.nok;
  }

  bool get isCurrencyCodeNpr {
    return this.currencyCode == CurrencyCode.npr;
  }

  bool get isCurrencyCodeNzd {
    return this.currencyCode == CurrencyCode.nzd;
  }

  bool get isCurrencyCodeOmr {
    return this.currencyCode == CurrencyCode.omr;
  }

  bool get isCurrencyCodePab {
    return this.currencyCode == CurrencyCode.pab;
  }

  bool get isCurrencyCodePen {
    return this.currencyCode == CurrencyCode.pen;
  }

  bool get isCurrencyCodePgk {
    return this.currencyCode == CurrencyCode.pgk;
  }

  bool get isCurrencyCodePhp {
    return this.currencyCode == CurrencyCode.php;
  }

  bool get isCurrencyCodePkr {
    return this.currencyCode == CurrencyCode.pkr;
  }

  bool get isCurrencyCodePln {
    return this.currencyCode == CurrencyCode.pln;
  }

  bool get isCurrencyCodePyg {
    return this.currencyCode == CurrencyCode.pyg;
  }

  bool get isCurrencyCodeQar {
    return this.currencyCode == CurrencyCode.qar;
  }

  bool get isCurrencyCodeRon {
    return this.currencyCode == CurrencyCode.ron;
  }

  bool get isCurrencyCodeRsd {
    return this.currencyCode == CurrencyCode.rsd;
  }

  bool get isCurrencyCodeRub {
    return this.currencyCode == CurrencyCode.rub;
  }

  bool get isCurrencyCodeRwf {
    return this.currencyCode == CurrencyCode.rwf;
  }

  bool get isCurrencyCodeSar {
    return this.currencyCode == CurrencyCode.sar;
  }

  bool get isCurrencyCodeSbd {
    return this.currencyCode == CurrencyCode.sbd;
  }

  bool get isCurrencyCodeScr {
    return this.currencyCode == CurrencyCode.scr;
  }

  bool get isCurrencyCodeSdg {
    return this.currencyCode == CurrencyCode.sdg;
  }

  bool get isCurrencyCodeSek {
    return this.currencyCode == CurrencyCode.sek;
  }

  bool get isCurrencyCodeSgd {
    return this.currencyCode == CurrencyCode.sgd;
  }

  bool get isCurrencyCodeShp {
    return this.currencyCode == CurrencyCode.shp;
  }

  bool get isCurrencyCodeSll {
    return this.currencyCode == CurrencyCode.sll;
  }

  bool get isCurrencyCodeSos {
    return this.currencyCode == CurrencyCode.sos;
  }

  bool get isCurrencyCodeSrd {
    return this.currencyCode == CurrencyCode.srd;
  }

  bool get isCurrencyCodeSsp {
    return this.currencyCode == CurrencyCode.ssp;
  }

  bool get isCurrencyCodeStn {
    return this.currencyCode == CurrencyCode.stn;
  }

  bool get isCurrencyCodeSvc {
    return this.currencyCode == CurrencyCode.svc;
  }

  bool get isCurrencyCodeSyp {
    return this.currencyCode == CurrencyCode.syp;
  }

  bool get isCurrencyCodeSzl {
    return this.currencyCode == CurrencyCode.szl;
  }

  bool get isCurrencyCodeThb {
    return this.currencyCode == CurrencyCode.thb;
  }

  bool get isCurrencyCodeTjs {
    return this.currencyCode == CurrencyCode.tjs;
  }

  bool get isCurrencyCodeTmt {
    return this.currencyCode == CurrencyCode.tmt;
  }

  bool get isCurrencyCodeTnd {
    return this.currencyCode == CurrencyCode.tnd;
  }

  bool get isCurrencyCodeTop {
    return this.currencyCode == CurrencyCode.top;
  }

  bool get isCurrencyCodeTry_ {
    return this.currencyCode == CurrencyCode.try_;
  }

  bool get isCurrencyCodeTtd {
    return this.currencyCode == CurrencyCode.ttd;
  }

  bool get isCurrencyCodeTwd {
    return this.currencyCode == CurrencyCode.twd;
  }

  bool get isCurrencyCodeTzs {
    return this.currencyCode == CurrencyCode.tzs;
  }

  bool get isCurrencyCodeUah {
    return this.currencyCode == CurrencyCode.uah;
  }

  bool get isCurrencyCodeUgx {
    return this.currencyCode == CurrencyCode.ugx;
  }

  bool get isCurrencyCodeUsd {
    return this.currencyCode == CurrencyCode.usd;
  }

  bool get isCurrencyCodeUyu {
    return this.currencyCode == CurrencyCode.uyu;
  }

  bool get isCurrencyCodeUzs {
    return this.currencyCode == CurrencyCode.uzs;
  }

  bool get isCurrencyCodeVes {
    return this.currencyCode == CurrencyCode.ves;
  }

  bool get isCurrencyCodeVnd {
    return this.currencyCode == CurrencyCode.vnd;
  }

  bool get isCurrencyCodeVuv {
    return this.currencyCode == CurrencyCode.vuv;
  }

  bool get isCurrencyCodeWst {
    return this.currencyCode == CurrencyCode.wst;
  }

  bool get isCurrencyCodeXaf {
    return this.currencyCode == CurrencyCode.xaf;
  }

  bool get isCurrencyCodeXcd {
    return this.currencyCode == CurrencyCode.xcd;
  }

  bool get isCurrencyCodeXof {
    return this.currencyCode == CurrencyCode.xof;
  }

  bool get isCurrencyCodeXpf {
    return this.currencyCode == CurrencyCode.xpf;
  }

  bool get isCurrencyCodeYer {
    return this.currencyCode == CurrencyCode.yer;
  }

  bool get isCurrencyCodeZar {
    return this.currencyCode == CurrencyCode.zar;
  }

  bool get isCurrencyCodeZmw {
    return this.currencyCode == CurrencyCode.zmw;
  }

  bool get isCurrencyCodeZwl {
    return this.currencyCode == CurrencyCode.zwl;
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

  bool get hasOptions {
    return this.options.isNotEmpty;
  }

  bool get noOptions {
    return this.options.isEmpty;
  }

  bool get hasProductId {
    return this.productId.isNotEmpty;
  }

  bool get noProductId {
    return this.productId.isEmpty;
  }

  bool get hasSku {
    return this.sku.isNotEmpty;
  }

  bool get noSku {
    return this.sku.isEmpty;
  }

  bool get hasStockLevel {
    return this.stockLevel.isNotEmpty;
  }

  bool get noStockLevel {
    return this.stockLevel.isEmpty;
  }

  bool get hasTranslations {
    return this.translations.isNotEmpty;
  }

  bool get noTranslations {
    return this.translations.isEmpty;
  }
}

extension ProductVariantSerialization on ProductVariant {
  Map<String, dynamic> toJson() {
    return _$ProductVariantToJson(this);
  }
}

enum ProductVariant$ {
  assets,
  createdAt,
  currencyCode,
  customFields,
  facetValues,
  featuredAsset,
  id,
  languageCode,
  name_,
  options,
  price,
  priceWithTax,
  productId,
  sku,
  stockLevel,
  taxCategory,
  translations,
  updatedAt,
}

class ProductVariantPatch extends PatchBase<ProductVariant, ProductVariant$> {
  ProductVariant applyTo(ProductVariant entity) {
    return entity.patchWithProductVariant(this);
  }

  ProductVariantPatch withAssets(List<Asset>? value) {
    patchMap[ProductVariant$.assets] = value;
    return this;
  }

  ProductVariantPatch updateAssetsAt(
    int index,
    AssetPatch Function(AssetPatch) patch,
  ) {
    patchMap[ProductVariant$.assets] = (List<dynamic> list) {
      var updatedList = List<Asset>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(AssetPatch())
            .applyTo(updatedList[index] as Asset);
      }
      return updatedList;
    };
    return this;
  }

  ProductVariantPatch withCreatedAt(DateTime? value) {
    patchMap[ProductVariant$.createdAt] = value;
    return this;
  }

  ProductVariantPatch withCurrencyCode(CurrencyCode? value) {
    patchMap[ProductVariant$.currencyCode] = value;
    return this;
  }

  ProductVariantPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[ProductVariant$.customFields] = value;
    return this;
  }

  ProductVariantPatch withFacetValues(List<FacetValue>? value) {
    patchMap[ProductVariant$.facetValues] = value;
    return this;
  }

  ProductVariantPatch updateFacetValuesAt(
    int index,
    FacetValuePatch Function(FacetValuePatch) patch,
  ) {
    patchMap[ProductVariant$.facetValues] = (List<dynamic> list) {
      var updatedList = List<FacetValue>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FacetValuePatch())
            .applyTo(updatedList[index] as FacetValue);
      }
      return updatedList;
    };
    return this;
  }

  ProductVariantPatch withFeaturedAsset(Asset? value) {
    patchMap[ProductVariant$.featuredAsset] = value;
    return this;
  }

  ProductVariantPatch withFeaturedAssetPatch(AssetPatch patch) {
    patchMap[ProductVariant$.featuredAsset] = patch;
    return this;
  }

  ProductVariantPatch withFeaturedAssetPatchFunc(
    AssetPatch Function(AssetPatch) patch,
  ) {
    patchMap[ProductVariant$.featuredAsset] = (dynamic current) {
      var currentPatch = AssetPatch();
      return patch(currentPatch).applyTo(current as Asset);
    };
    return this;
  }

  ProductVariantPatch withId(String? value) {
    patchMap[ProductVariant$.id] = value;
    return this;
  }

  ProductVariantPatch withLanguageCode(LanguageCode? value) {
    patchMap[ProductVariant$.languageCode] = value;
    return this;
  }

  ProductVariantPatch withName(String? value) {
    patchMap[ProductVariant$.name_] = value;
    return this;
  }

  ProductVariantPatch withOptions(List<ProductOption>? value) {
    patchMap[ProductVariant$.options] = value;
    return this;
  }

  ProductVariantPatch updateOptionsAt(
    int index,
    ProductOptionPatch Function(ProductOptionPatch) patch,
  ) {
    patchMap[ProductVariant$.options] = (List<dynamic> list) {
      var updatedList = List<ProductOption>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductOptionPatch())
            .applyTo(updatedList[index] as ProductOption);
      }
      return updatedList;
    };
    return this;
  }

  ProductVariantPatch withPrice(double? value) {
    patchMap[ProductVariant$.price] = value;
    return this;
  }

  ProductVariantPatch withPriceWithTax(double? value) {
    patchMap[ProductVariant$.priceWithTax] = value;
    return this;
  }

  ProductVariantPatch withProductId(String? value) {
    patchMap[ProductVariant$.productId] = value;
    return this;
  }

  ProductVariantPatch withSku(String? value) {
    patchMap[ProductVariant$.sku] = value;
    return this;
  }

  ProductVariantPatch withStockLevel(String? value) {
    patchMap[ProductVariant$.stockLevel] = value;
    return this;
  }

  ProductVariantPatch withTaxCategory(TaxCategory? value) {
    patchMap[ProductVariant$.taxCategory] = value;
    return this;
  }

  ProductVariantPatch withTaxCategoryPatch(TaxCategoryPatch patch) {
    patchMap[ProductVariant$.taxCategory] = patch;
    return this;
  }

  ProductVariantPatch withTaxCategoryPatchFunc(
    TaxCategoryPatch Function(TaxCategoryPatch) patch,
  ) {
    patchMap[ProductVariant$.taxCategory] = (dynamic current) {
      var currentPatch = TaxCategoryPatch();
      return patch(currentPatch).applyTo(current as TaxCategory);
    };
    return this;
  }

  ProductVariantPatch withTranslations(List<ProductVariantTranslation>? value) {
    patchMap[ProductVariant$.translations] = value;
    return this;
  }

  ProductVariantPatch updateTranslationsAt(
    int index,
    ProductVariantTranslationPatch Function(ProductVariantTranslationPatch)
    patch,
  ) {
    patchMap[ProductVariant$.translations] = (List<dynamic> list) {
      var updatedList = List<ProductVariantTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductVariantTranslationPatch())
            .applyTo(updatedList[index] as ProductVariantTranslation);
      }
      return updatedList;
    };
    return this;
  }

  ProductVariantPatch withUpdatedAt(DateTime? value) {
    patchMap[ProductVariant$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [ProductVariant] query construction
abstract final class ProductVariantFields {
  static const assets = Field<ProductVariant, List<Asset>>('assets', _$assets);

  static const createdAt = Field<ProductVariant, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const currencyCode = Field<ProductVariant, CurrencyCode>(
    'currencyCode',
    _$currencyCode,
  );

  static const customFields = Field<ProductVariant, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const facetValues = Field<ProductVariant, List<FacetValue>>(
    'facetValues',
    _$facetValues,
  );

  static const featuredAsset = Field<ProductVariant, Asset?>(
    'featuredAsset',
    _$featuredAsset,
  );

  static const id = Field<ProductVariant, String>('id', _$id);

  static const languageCode = Field<ProductVariant, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<ProductVariant, String>('name', _$name);

  static const options = Field<ProductVariant, List<ProductOption>>(
    'options',
    _$options,
  );

  static const price = Field<ProductVariant, double>('price', _$price);

  static const priceWithTax = Field<ProductVariant, double>(
    'priceWithTax',
    _$priceWithTax,
  );

  static const productId = Field<ProductVariant, String>(
    'productId',
    _$productId,
  );

  static const sku = Field<ProductVariant, String>('sku', _$sku);

  static const stockLevel = Field<ProductVariant, String>(
    'stockLevel',
    _$stockLevel,
  );

  static const taxCategory = Field<ProductVariant, TaxCategory>(
    'taxCategory',
    _$taxCategory,
  );

  static const translations =
      Field<ProductVariant, List<ProductVariantTranslation>>(
        'translations',
        _$translations,
      );

  static const updatedAt = Field<ProductVariant, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static List<Asset> _$assets(ProductVariant e) {
    return e.assets;
  }

  static DateTime _$createdAt(ProductVariant e) {
    return e.createdAt;
  }

  static CurrencyCode _$currencyCode(ProductVariant e) {
    return e.currencyCode;
  }

  static Map<String, dynamic>? _$customFields(ProductVariant e) {
    return e.customFields;
  }

  static List<FacetValue> _$facetValues(ProductVariant e) {
    return e.facetValues;
  }

  static Asset? _$featuredAsset(ProductVariant e) {
    return e.featuredAsset;
  }

  static String _$id(ProductVariant e) {
    return e.id;
  }

  static LanguageCode _$languageCode(ProductVariant e) {
    return e.languageCode;
  }

  static String _$name(ProductVariant e) {
    return e.name;
  }

  static List<ProductOption> _$options(ProductVariant e) {
    return e.options;
  }

  static double _$price(ProductVariant e) {
    return e.price;
  }

  static double _$priceWithTax(ProductVariant e) {
    return e.priceWithTax;
  }

  static String _$productId(ProductVariant e) {
    return e.productId;
  }

  static String _$sku(ProductVariant e) {
    return e.sku;
  }

  static String _$stockLevel(ProductVariant e) {
    return e.stockLevel;
  }

  static TaxCategory _$taxCategory(ProductVariant e) {
    return e.taxCategory;
  }

  static List<ProductVariantTranslation> _$translations(ProductVariant e) {
    return e.translations;
  }

  static DateTime _$updatedAt(ProductVariant e) {
    return e.updatedAt;
  }
}

extension ProductVariantCompareE on ProductVariant {
  Map<String, dynamic> compareToProductVariant(ProductVariant other) {
    final Map<String, dynamic> diff = {};

    if (assets != other.assets) {
      diff['assets'] = () => other.assets;
    }

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (currencyCode != other.currencyCode) {
      diff['currencyCode'] = () => other.currencyCode;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
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

    if (options != other.options) {
      diff['options'] = () => other.options;
    }

    if (price != other.price) {
      diff['price'] = () => other.price;
    }

    if (priceWithTax != other.priceWithTax) {
      diff['priceWithTax'] = () => other.priceWithTax;
    }

    if (productId != other.productId) {
      diff['productId'] = () => other.productId;
    }

    if (sku != other.sku) {
      diff['sku'] = () => other.sku;
    }

    if (stockLevel != other.stockLevel) {
      diff['stockLevel'] = () => other.stockLevel;
    }

    if (taxCategory != other.taxCategory) {
      diff['taxCategory'] = () => other.taxCategory;
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
