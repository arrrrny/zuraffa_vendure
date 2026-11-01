// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'search_result.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class SearchResult {
  SearchResult({
    required List<String> this.collectionIds,
    required CurrencyCode this.currencyCode,
    required String this.description,
    required List<String> this.facetIds,
    required List<String> this.facetValueIds,
    required bool this.inStock,
    required SearchResultPrice this.price,
    required SearchResultPrice this.priceWithTax,
    SearchResultAsset? this.productAsset,
    required String this.productId,
    required String this.productName,
    SearchResultAsset? this.productVariantAsset,
    required String this.productVariantId,
    required String this.productVariantName,
    required double this.score,
    required String this.sku,
    required String this.slug,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  final List<String> collectionIds;

  final CurrencyCode currencyCode;

  final String description;

  final List<String> facetIds;

  final List<String> facetValueIds;

  final bool inStock;

  final SearchResultPrice price;

  final SearchResultPrice priceWithTax;

  final SearchResultAsset? productAsset;

  final String productId;

  final String productName;

  final SearchResultAsset? productVariantAsset;

  final String productVariantId;

  final String productVariantName;

  final double score;

  final String sku;

  final String slug;

  SearchResult copyWith({
    List<String>? collectionIds,
    CurrencyCode? currencyCode,
    String? description,
    List<String>? facetIds,
    List<String>? facetValueIds,
    bool? inStock,
    SearchResultPrice? price,
    SearchResultPrice? priceWithTax,
    SearchResultAsset? productAsset,
    String? productId,
    String? productName,
    SearchResultAsset? productVariantAsset,
    String? productVariantId,
    String? productVariantName,
    double? score,
    String? sku,
    String? slug,
  }) {
    return SearchResult(
      collectionIds: collectionIds ?? this.collectionIds,
      currencyCode: currencyCode ?? this.currencyCode,
      description: description ?? this.description,
      facetIds: facetIds ?? this.facetIds,
      facetValueIds: facetValueIds ?? this.facetValueIds,
      inStock: inStock ?? this.inStock,
      price: price ?? this.price,
      priceWithTax: priceWithTax ?? this.priceWithTax,
      productAsset: productAsset ?? this.productAsset,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productVariantAsset: productVariantAsset ?? this.productVariantAsset,
      productVariantId: productVariantId ?? this.productVariantId,
      productVariantName: productVariantName ?? this.productVariantName,
      score: score ?? this.score,
      sku: sku ?? this.sku,
      slug: slug ?? this.slug,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  SearchResult copyWithField<T>(Field<SearchResult, T> field, T value) {
    switch (field.name) {
      case 'collectionIds':
        return copyWith(collectionIds: value as List<String>);
      case 'currencyCode':
        return copyWith(currencyCode: value as CurrencyCode);
      case 'description':
        return copyWith(description: value as String);
      case 'facetIds':
        return copyWith(facetIds: value as List<String>);
      case 'facetValueIds':
        return copyWith(facetValueIds: value as List<String>);
      case 'inStock':
        return copyWith(inStock: value as bool);
      case 'price':
        return copyWith(price: value as SearchResultPrice);
      case 'priceWithTax':
        return copyWith(priceWithTax: value as SearchResultPrice);
      case 'productAsset':
        return copyWith(productAsset: value as SearchResultAsset?);
      case 'productId':
        return copyWith(productId: value as String);
      case 'productName':
        return copyWith(productName: value as String);
      case 'productVariantAsset':
        return copyWith(productVariantAsset: value as SearchResultAsset?);
      case 'productVariantId':
        return copyWith(productVariantId: value as String);
      case 'productVariantName':
        return copyWith(productVariantName: value as String);
      case 'score':
        return copyWith(score: value as double);
      case 'sku':
        return copyWith(sku: value as String);
      case 'slug':
        return copyWith(slug: value as String);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'SearchResult has no settable field with this name',
        );
    }
  }

  SearchResult copyWithSearchResult({
    List<String>? collectionIds,
    CurrencyCode? currencyCode,
    String? description,
    List<String>? facetIds,
    List<String>? facetValueIds,
    bool? inStock,
    SearchResultPrice? price,
    SearchResultPrice? priceWithTax,
    SearchResultAsset? productAsset,
    String? productId,
    String? productName,
    SearchResultAsset? productVariantAsset,
    String? productVariantId,
    String? productVariantName,
    double? score,
    String? sku,
    String? slug,
  }) {
    return copyWith(
      collectionIds: collectionIds,
      currencyCode: currencyCode,
      description: description,
      facetIds: facetIds,
      facetValueIds: facetValueIds,
      inStock: inStock,
      price: price,
      priceWithTax: priceWithTax,
      productAsset: productAsset,
      productId: productId,
      productName: productName,
      productVariantAsset: productVariantAsset,
      productVariantId: productVariantId,
      productVariantName: productVariantName,
      score: score,
      sku: sku,
      slug: slug,
    );
  }

  SearchResult patchWithSearchResult([SearchResultPatch? patchInput]) {
    final _patcher = patchInput ?? SearchResultPatch();
    final _patchMap = _patcher.patchMap;
    return SearchResult(
      collectionIds: _patchMap.containsKey(SearchResult$.collectionIds)
          ? ((_patchMap[SearchResult$.collectionIds] is Function)
                    ? _patchMap[SearchResult$.collectionIds](this.collectionIds)
                    : (_patchMap[SearchResult$.collectionIds] is Patch)
                    ? _patchMap[SearchResult$.collectionIds].applyTo(
                        this.collectionIds,
                      )
                    : _patchMap[SearchResult$.collectionIds])
                as List<String>
          : this.collectionIds,
      currencyCode: _patchMap.containsKey(SearchResult$.currencyCode)
          ? ((_patchMap[SearchResult$.currencyCode] is Function)
                    ? _patchMap[SearchResult$.currencyCode](this.currencyCode)
                    : (_patchMap[SearchResult$.currencyCode] is Patch)
                    ? _patchMap[SearchResult$.currencyCode].applyTo(
                        this.currencyCode,
                      )
                    : _patchMap[SearchResult$.currencyCode])
                as CurrencyCode
          : this.currencyCode,
      description: _patchMap.containsKey(SearchResult$.description)
          ? ((_patchMap[SearchResult$.description] is Function)
                    ? _patchMap[SearchResult$.description](this.description)
                    : (_patchMap[SearchResult$.description] is Patch)
                    ? _patchMap[SearchResult$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[SearchResult$.description])
                as String
          : this.description,
      facetIds: _patchMap.containsKey(SearchResult$.facetIds)
          ? ((_patchMap[SearchResult$.facetIds] is Function)
                    ? _patchMap[SearchResult$.facetIds](this.facetIds)
                    : (_patchMap[SearchResult$.facetIds] is Patch)
                    ? _patchMap[SearchResult$.facetIds].applyTo(this.facetIds)
                    : _patchMap[SearchResult$.facetIds])
                as List<String>
          : this.facetIds,
      facetValueIds: _patchMap.containsKey(SearchResult$.facetValueIds)
          ? ((_patchMap[SearchResult$.facetValueIds] is Function)
                    ? _patchMap[SearchResult$.facetValueIds](this.facetValueIds)
                    : (_patchMap[SearchResult$.facetValueIds] is Patch)
                    ? _patchMap[SearchResult$.facetValueIds].applyTo(
                        this.facetValueIds,
                      )
                    : _patchMap[SearchResult$.facetValueIds])
                as List<String>
          : this.facetValueIds,
      inStock: _patchMap.containsKey(SearchResult$.inStock)
          ? ((_patchMap[SearchResult$.inStock] is Function)
                    ? _patchMap[SearchResult$.inStock](this.inStock)
                    : (_patchMap[SearchResult$.inStock] is Patch)
                    ? _patchMap[SearchResult$.inStock].applyTo(this.inStock)
                    : _patchMap[SearchResult$.inStock])
                as bool
          : this.inStock,
      price: _patchMap.containsKey(SearchResult$.price)
          ? ((_patchMap[SearchResult$.price] is Function)
                    ? _patchMap[SearchResult$.price](this.price)
                    : (_patchMap[SearchResult$.price] is Patch)
                    ? _patchMap[SearchResult$.price].applyTo(this.price)
                    : _patchMap[SearchResult$.price])
                as SearchResultPrice
          : this.price,
      priceWithTax: _patchMap.containsKey(SearchResult$.priceWithTax)
          ? ((_patchMap[SearchResult$.priceWithTax] is Function)
                    ? _patchMap[SearchResult$.priceWithTax](this.priceWithTax)
                    : (_patchMap[SearchResult$.priceWithTax] is Patch)
                    ? _patchMap[SearchResult$.priceWithTax].applyTo(
                        this.priceWithTax,
                      )
                    : _patchMap[SearchResult$.priceWithTax])
                as SearchResultPrice
          : this.priceWithTax,
      productAsset: _patchMap.containsKey(SearchResult$.productAsset)
          ? ((_patchMap[SearchResult$.productAsset] is Function)
                    ? _patchMap[SearchResult$.productAsset](this.productAsset)
                    : (_patchMap[SearchResult$.productAsset] is Patch)
                    ? _patchMap[SearchResult$.productAsset].applyTo(
                        this.productAsset,
                      )
                    : _patchMap[SearchResult$.productAsset])
                as SearchResultAsset?
          : this.productAsset,
      productId: _patchMap.containsKey(SearchResult$.productId)
          ? ((_patchMap[SearchResult$.productId] is Function)
                    ? _patchMap[SearchResult$.productId](this.productId)
                    : (_patchMap[SearchResult$.productId] is Patch)
                    ? _patchMap[SearchResult$.productId].applyTo(this.productId)
                    : _patchMap[SearchResult$.productId])
                as String
          : this.productId,
      productName: _patchMap.containsKey(SearchResult$.productName)
          ? ((_patchMap[SearchResult$.productName] is Function)
                    ? _patchMap[SearchResult$.productName](this.productName)
                    : (_patchMap[SearchResult$.productName] is Patch)
                    ? _patchMap[SearchResult$.productName].applyTo(
                        this.productName,
                      )
                    : _patchMap[SearchResult$.productName])
                as String
          : this.productName,
      productVariantAsset:
          _patchMap.containsKey(SearchResult$.productVariantAsset)
          ? ((_patchMap[SearchResult$.productVariantAsset] is Function)
                    ? _patchMap[SearchResult$.productVariantAsset](
                        this.productVariantAsset,
                      )
                    : (_patchMap[SearchResult$.productVariantAsset] is Patch)
                    ? _patchMap[SearchResult$.productVariantAsset].applyTo(
                        this.productVariantAsset,
                      )
                    : _patchMap[SearchResult$.productVariantAsset])
                as SearchResultAsset?
          : this.productVariantAsset,
      productVariantId: _patchMap.containsKey(SearchResult$.productVariantId)
          ? ((_patchMap[SearchResult$.productVariantId] is Function)
                    ? _patchMap[SearchResult$.productVariantId](
                        this.productVariantId,
                      )
                    : (_patchMap[SearchResult$.productVariantId] is Patch)
                    ? _patchMap[SearchResult$.productVariantId].applyTo(
                        this.productVariantId,
                      )
                    : _patchMap[SearchResult$.productVariantId])
                as String
          : this.productVariantId,
      productVariantName:
          _patchMap.containsKey(SearchResult$.productVariantName)
          ? ((_patchMap[SearchResult$.productVariantName] is Function)
                    ? _patchMap[SearchResult$.productVariantName](
                        this.productVariantName,
                      )
                    : (_patchMap[SearchResult$.productVariantName] is Patch)
                    ? _patchMap[SearchResult$.productVariantName].applyTo(
                        this.productVariantName,
                      )
                    : _patchMap[SearchResult$.productVariantName])
                as String
          : this.productVariantName,
      score: _patchMap.containsKey(SearchResult$.score)
          ? ((_patchMap[SearchResult$.score] is Function)
                    ? _patchMap[SearchResult$.score](this.score)
                    : (_patchMap[SearchResult$.score] is Patch)
                    ? _patchMap[SearchResult$.score].applyTo(this.score)
                    : _patchMap[SearchResult$.score])
                as double
          : this.score,
      sku: _patchMap.containsKey(SearchResult$.sku)
          ? ((_patchMap[SearchResult$.sku] is Function)
                    ? _patchMap[SearchResult$.sku](this.sku)
                    : (_patchMap[SearchResult$.sku] is Patch)
                    ? _patchMap[SearchResult$.sku].applyTo(this.sku)
                    : _patchMap[SearchResult$.sku])
                as String
          : this.sku,
      slug: _patchMap.containsKey(SearchResult$.slug)
          ? ((_patchMap[SearchResult$.slug] is Function)
                    ? _patchMap[SearchResult$.slug](this.slug)
                    : (_patchMap[SearchResult$.slug] is Patch)
                    ? _patchMap[SearchResult$.slug].applyTo(this.slug)
                    : _patchMap[SearchResult$.slug])
                as String
          : this.slug,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SearchResult &&
        collectionIds == other.collectionIds &&
        currencyCode == other.currencyCode &&
        description == other.description &&
        facetIds == other.facetIds &&
        facetValueIds == other.facetValueIds &&
        inStock == other.inStock &&
        price == other.price &&
        priceWithTax == other.priceWithTax &&
        productAsset == other.productAsset &&
        productId == other.productId &&
        productName == other.productName &&
        productVariantAsset == other.productVariantAsset &&
        productVariantId == other.productVariantId &&
        productVariantName == other.productVariantName &&
        score == other.score &&
        sku == other.sku &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.collectionIds,
      this.currencyCode,
      this.description,
      this.facetIds,
      this.facetValueIds,
      this.inStock,
      this.price,
      this.priceWithTax,
      this.productAsset,
      this.productId,
      this.productName,
      this.productVariantAsset,
      this.productVariantId,
      this.productVariantName,
      this.score,
      this.sku,
      this.slug,
    );
  }

  @override
  String toString() {
    return 'SearchResult(' +
        'collectionIds: ${collectionIds}' +
        ', ' +
        'currencyCode: ${currencyCode}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'facetIds: ${facetIds}' +
        ', ' +
        'facetValueIds: ${facetValueIds}' +
        ', ' +
        'inStock: ${inStock}' +
        ', ' +
        'price: ${price}' +
        ', ' +
        'priceWithTax: ${priceWithTax}' +
        ', ' +
        'productAsset: ${productAsset}' +
        ', ' +
        'productId: ${productId}' +
        ', ' +
        'productName: ${productName}' +
        ', ' +
        'productVariantAsset: ${productVariantAsset}' +
        ', ' +
        'productVariantId: ${productVariantId}' +
        ', ' +
        'productVariantName: ${productVariantName}' +
        ', ' +
        'score: ${score}' +
        ', ' +
        'sku: ${sku}' +
        ', ' +
        'slug: ${slug})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$SearchResultToJson(this);
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

extension SearchResultPropertyHelpers on SearchResult {
  bool get hasCollectionIds {
    return this.collectionIds.isNotEmpty;
  }

  bool get noCollectionIds {
    return this.collectionIds.isEmpty;
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

  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
  }

  bool get hasFacetIds {
    return this.facetIds.isNotEmpty;
  }

  bool get noFacetIds {
    return this.facetIds.isEmpty;
  }

  bool get hasFacetValueIds {
    return this.facetValueIds.isNotEmpty;
  }

  bool get noFacetValueIds {
    return this.facetValueIds.isEmpty;
  }

  bool get hasProductAsset {
    return this.productAsset != null;
  }

  bool get noProductAsset {
    return this.productAsset == null;
  }

  SearchResultAsset get productAssetRequired {
    return this.productAsset ??
        (throw StateError('productAsset is required but was null'));
  }

  bool get hasProductId {
    return this.productId.isNotEmpty;
  }

  bool get noProductId {
    return this.productId.isEmpty;
  }

  bool get hasProductName {
    return this.productName.isNotEmpty;
  }

  bool get noProductName {
    return this.productName.isEmpty;
  }

  bool get hasProductVariantAsset {
    return this.productVariantAsset != null;
  }

  bool get noProductVariantAsset {
    return this.productVariantAsset == null;
  }

  SearchResultAsset get productVariantAssetRequired {
    return this.productVariantAsset ??
        (throw StateError('productVariantAsset is required but was null'));
  }

  bool get hasProductVariantId {
    return this.productVariantId.isNotEmpty;
  }

  bool get noProductVariantId {
    return this.productVariantId.isEmpty;
  }

  bool get hasProductVariantName {
    return this.productVariantName.isNotEmpty;
  }

  bool get noProductVariantName {
    return this.productVariantName.isEmpty;
  }

  bool get hasSku {
    return this.sku.isNotEmpty;
  }

  bool get noSku {
    return this.sku.isEmpty;
  }

  bool get hasSlug {
    return this.slug.isNotEmpty;
  }

  bool get noSlug {
    return this.slug.isEmpty;
  }
}

extension SearchResultSerialization on SearchResult {
  Map<String, dynamic> toJson() {
    return _$SearchResultToJson(this);
  }
}

enum SearchResult$ {
  collectionIds,
  currencyCode,
  description,
  facetIds,
  facetValueIds,
  inStock,
  price,
  priceWithTax,
  productAsset,
  productId,
  productName,
  productVariantAsset,
  productVariantId,
  productVariantName,
  score,
  sku,
  slug,
}

class SearchResultPatch extends PatchBase<SearchResult, SearchResult$> {
  SearchResult applyTo(SearchResult entity) {
    return entity.patchWithSearchResult(this);
  }

  SearchResultPatch withCollectionIds(List<String>? value) {
    patchMap[SearchResult$.collectionIds] = value;
    return this;
  }

  SearchResultPatch withCurrencyCode(CurrencyCode? value) {
    patchMap[SearchResult$.currencyCode] = value;
    return this;
  }

  SearchResultPatch withDescription(String? value) {
    patchMap[SearchResult$.description] = value;
    return this;
  }

  SearchResultPatch withFacetIds(List<String>? value) {
    patchMap[SearchResult$.facetIds] = value;
    return this;
  }

  SearchResultPatch withFacetValueIds(List<String>? value) {
    patchMap[SearchResult$.facetValueIds] = value;
    return this;
  }

  SearchResultPatch withInStock(bool? value) {
    patchMap[SearchResult$.inStock] = value;
    return this;
  }

  SearchResultPatch withPrice(SearchResultPrice? value) {
    patchMap[SearchResult$.price] = value;
    return this;
  }

  SearchResultPatch withPriceWithTax(SearchResultPrice? value) {
    patchMap[SearchResult$.priceWithTax] = value;
    return this;
  }

  SearchResultPatch withProductAsset(SearchResultAsset? value) {
    patchMap[SearchResult$.productAsset] = value;
    return this;
  }

  SearchResultPatch withProductAssetPatch(SearchResultAssetPatch patch) {
    patchMap[SearchResult$.productAsset] = patch;
    return this;
  }

  SearchResultPatch withProductAssetPatchFunc(
    SearchResultAssetPatch Function(SearchResultAssetPatch) patch,
  ) {
    patchMap[SearchResult$.productAsset] = (dynamic current) {
      var currentPatch = SearchResultAssetPatch();
      return patch(currentPatch).applyTo(current as SearchResultAsset);
    };
    return this;
  }

  SearchResultPatch withProductId(String? value) {
    patchMap[SearchResult$.productId] = value;
    return this;
  }

  SearchResultPatch withProductName(String? value) {
    patchMap[SearchResult$.productName] = value;
    return this;
  }

  SearchResultPatch withProductVariantAsset(SearchResultAsset? value) {
    patchMap[SearchResult$.productVariantAsset] = value;
    return this;
  }

  SearchResultPatch withProductVariantAssetPatch(SearchResultAssetPatch patch) {
    patchMap[SearchResult$.productVariantAsset] = patch;
    return this;
  }

  SearchResultPatch withProductVariantAssetPatchFunc(
    SearchResultAssetPatch Function(SearchResultAssetPatch) patch,
  ) {
    patchMap[SearchResult$.productVariantAsset] = (dynamic current) {
      var currentPatch = SearchResultAssetPatch();
      return patch(currentPatch).applyTo(current as SearchResultAsset);
    };
    return this;
  }

  SearchResultPatch withProductVariantId(String? value) {
    patchMap[SearchResult$.productVariantId] = value;
    return this;
  }

  SearchResultPatch withProductVariantName(String? value) {
    patchMap[SearchResult$.productVariantName] = value;
    return this;
  }

  SearchResultPatch withScore(double? value) {
    patchMap[SearchResult$.score] = value;
    return this;
  }

  SearchResultPatch withSku(String? value) {
    patchMap[SearchResult$.sku] = value;
    return this;
  }

  SearchResultPatch withSlug(String? value) {
    patchMap[SearchResult$.slug] = value;
    return this;
  }
}

/// Field descriptors for [SearchResult] query construction
abstract final class SearchResultFields {
  static const collectionIds = Field<SearchResult, List<String>>(
    'collectionIds',
    _$collectionIds,
  );

  static const currencyCode = Field<SearchResult, CurrencyCode>(
    'currencyCode',
    _$currencyCode,
  );

  static const description = Field<SearchResult, String>(
    'description',
    _$description,
  );

  static const facetIds = Field<SearchResult, List<String>>(
    'facetIds',
    _$facetIds,
  );

  static const facetValueIds = Field<SearchResult, List<String>>(
    'facetValueIds',
    _$facetValueIds,
  );

  static const inStock = Field<SearchResult, bool>('inStock', _$inStock);

  static const price = Field<SearchResult, SearchResultPrice>('price', _$price);

  static const priceWithTax = Field<SearchResult, SearchResultPrice>(
    'priceWithTax',
    _$priceWithTax,
  );

  static const productAsset = Field<SearchResult, SearchResultAsset?>(
    'productAsset',
    _$productAsset,
  );

  static const productId = Field<SearchResult, String>(
    'productId',
    _$productId,
  );

  static const productName = Field<SearchResult, String>(
    'productName',
    _$productName,
  );

  static const productVariantAsset = Field<SearchResult, SearchResultAsset?>(
    'productVariantAsset',
    _$productVariantAsset,
  );

  static const productVariantId = Field<SearchResult, String>(
    'productVariantId',
    _$productVariantId,
  );

  static const productVariantName = Field<SearchResult, String>(
    'productVariantName',
    _$productVariantName,
  );

  static const score = Field<SearchResult, double>('score', _$score);

  static const sku = Field<SearchResult, String>('sku', _$sku);

  static const slug = Field<SearchResult, String>('slug', _$slug);

  static List<String> _$collectionIds(SearchResult e) {
    return e.collectionIds;
  }

  static CurrencyCode _$currencyCode(SearchResult e) {
    return e.currencyCode;
  }

  static String _$description(SearchResult e) {
    return e.description;
  }

  static List<String> _$facetIds(SearchResult e) {
    return e.facetIds;
  }

  static List<String> _$facetValueIds(SearchResult e) {
    return e.facetValueIds;
  }

  static bool _$inStock(SearchResult e) {
    return e.inStock;
  }

  static SearchResultPrice _$price(SearchResult e) {
    return e.price;
  }

  static SearchResultPrice _$priceWithTax(SearchResult e) {
    return e.priceWithTax;
  }

  static SearchResultAsset? _$productAsset(SearchResult e) {
    return e.productAsset;
  }

  static String _$productId(SearchResult e) {
    return e.productId;
  }

  static String _$productName(SearchResult e) {
    return e.productName;
  }

  static SearchResultAsset? _$productVariantAsset(SearchResult e) {
    return e.productVariantAsset;
  }

  static String _$productVariantId(SearchResult e) {
    return e.productVariantId;
  }

  static String _$productVariantName(SearchResult e) {
    return e.productVariantName;
  }

  static double _$score(SearchResult e) {
    return e.score;
  }

  static String _$sku(SearchResult e) {
    return e.sku;
  }

  static String _$slug(SearchResult e) {
    return e.slug;
  }
}

extension SearchResultCompareE on SearchResult {
  Map<String, dynamic> compareToSearchResult(SearchResult other) {
    final Map<String, dynamic> diff = {};

    if (collectionIds != other.collectionIds) {
      diff['collectionIds'] = () => other.collectionIds;
    }

    if (currencyCode != other.currencyCode) {
      diff['currencyCode'] = () => other.currencyCode;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
    }

    if (facetIds != other.facetIds) {
      diff['facetIds'] = () => other.facetIds;
    }

    if (facetValueIds != other.facetValueIds) {
      diff['facetValueIds'] = () => other.facetValueIds;
    }

    if (inStock != other.inStock) {
      diff['inStock'] = () => other.inStock;
    }

    if (price != other.price) {
      diff['price'] = () => other.price;
    }

    if (priceWithTax != other.priceWithTax) {
      diff['priceWithTax'] = () => other.priceWithTax;
    }

    if (productAsset != other.productAsset) {
      diff['productAsset'] = () => other.productAsset;
    }

    if (productId != other.productId) {
      diff['productId'] = () => other.productId;
    }

    if (productName != other.productName) {
      diff['productName'] = () => other.productName;
    }

    if (productVariantAsset != other.productVariantAsset) {
      diff['productVariantAsset'] = () => other.productVariantAsset;
    }

    if (productVariantId != other.productVariantId) {
      diff['productVariantId'] = () => other.productVariantId;
    }

    if (productVariantName != other.productVariantName) {
      diff['productVariantName'] = () => other.productVariantName;
    }

    if (score != other.score) {
      diff['score'] = () => other.score;
    }

    if (sku != other.sku) {
      diff['sku'] = () => other.sku;
    }

    if (slug != other.slug) {
      diff['slug'] = () => other.slug;
    }
    return diff;
  }
}
