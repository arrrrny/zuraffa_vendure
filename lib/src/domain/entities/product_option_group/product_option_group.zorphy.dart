// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product_option_group.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ProductOptionGroup {
  ProductOptionGroup({
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    required List<ProductOption> this.options,
    required List<ProductOptionGroupTranslation> this.translations,
    required DateTime this.updatedAt,
  });

  factory ProductOptionGroup.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionGroupFromJson(json);

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final List<ProductOption> options;

  final List<ProductOptionGroupTranslation> translations;

  final DateTime updatedAt;

  ProductOptionGroup copyWith({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOption>? options,
    List<ProductOptionGroupTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return ProductOptionGroup(
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      options: options ?? this.options,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ProductOptionGroup copyWithField<T>(
    Field<ProductOptionGroup, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'code':
        return copyWith(code: value as String);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode);
      case 'name':
        return copyWith(name: value as String);
      case 'options':
        return copyWith(options: value as List<ProductOption>);
      case 'translations':
        return copyWith(
          translations: value as List<ProductOptionGroupTranslation>,
        );
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ProductOptionGroup has no settable field with this name',
        );
    }
  }

  ProductOptionGroup copyWithProductOptionGroup({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOption>? options,
    List<ProductOptionGroupTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return copyWith(
      code: code,
      createdAt: createdAt,
      customFields: customFields,
      id: id,
      languageCode: languageCode,
      name: name,
      options: options,
      translations: translations,
      updatedAt: updatedAt,
    );
  }

  ProductOptionGroup patchWithProductOptionGroup([
    ProductOptionGroupPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? ProductOptionGroupPatch();
    final _patchMap = _patcher.patchMap;
    return ProductOptionGroup(
      code: _patchMap.containsKey(ProductOptionGroup$.code)
          ? ((_patchMap[ProductOptionGroup$.code] is Function)
                    ? _patchMap[ProductOptionGroup$.code](this.code)
                    : (_patchMap[ProductOptionGroup$.code] is Patch)
                    ? _patchMap[ProductOptionGroup$.code].applyTo(this.code)
                    : _patchMap[ProductOptionGroup$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(ProductOptionGroup$.createdAt)
          ? ((_patchMap[ProductOptionGroup$.createdAt] is Function)
                    ? _patchMap[ProductOptionGroup$.createdAt](this.createdAt)
                    : (_patchMap[ProductOptionGroup$.createdAt] is Patch)
                    ? _patchMap[ProductOptionGroup$.createdAt].applyTo(
                        this.createdAt,
                      )
                    : _patchMap[ProductOptionGroup$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(ProductOptionGroup$.customFields)
          ? ((_patchMap[ProductOptionGroup$.customFields] is Function)
                    ? _patchMap[ProductOptionGroup$.customFields](
                        this.customFields,
                      )
                    : (_patchMap[ProductOptionGroup$.customFields] is Patch)
                    ? _patchMap[ProductOptionGroup$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[ProductOptionGroup$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      id: _patchMap.containsKey(ProductOptionGroup$.id)
          ? ((_patchMap[ProductOptionGroup$.id] is Function)
                    ? _patchMap[ProductOptionGroup$.id](this.id)
                    : (_patchMap[ProductOptionGroup$.id] is Patch)
                    ? _patchMap[ProductOptionGroup$.id].applyTo(this.id)
                    : _patchMap[ProductOptionGroup$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(ProductOptionGroup$.languageCode)
          ? ((_patchMap[ProductOptionGroup$.languageCode] is Function)
                    ? _patchMap[ProductOptionGroup$.languageCode](
                        this.languageCode,
                      )
                    : (_patchMap[ProductOptionGroup$.languageCode] is Patch)
                    ? _patchMap[ProductOptionGroup$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[ProductOptionGroup$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(ProductOptionGroup$.name_)
          ? ((_patchMap[ProductOptionGroup$.name_] is Function)
                    ? _patchMap[ProductOptionGroup$.name_](this.name)
                    : (_patchMap[ProductOptionGroup$.name_] is Patch)
                    ? _patchMap[ProductOptionGroup$.name_].applyTo(this.name)
                    : _patchMap[ProductOptionGroup$.name_])
                as String
          : this.name,
      options: _patchMap.containsKey(ProductOptionGroup$.options)
          ? ((_patchMap[ProductOptionGroup$.options] is Function)
                    ? _patchMap[ProductOptionGroup$.options](this.options)
                    : (_patchMap[ProductOptionGroup$.options] is Patch)
                    ? _patchMap[ProductOptionGroup$.options].applyTo(
                        this.options,
                      )
                    : _patchMap[ProductOptionGroup$.options])
                as List<ProductOption>
          : this.options,
      translations: _patchMap.containsKey(ProductOptionGroup$.translations)
          ? ((_patchMap[ProductOptionGroup$.translations] is Function)
                    ? _patchMap[ProductOptionGroup$.translations](
                        this.translations,
                      )
                    : (_patchMap[ProductOptionGroup$.translations] is Patch)
                    ? _patchMap[ProductOptionGroup$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[ProductOptionGroup$.translations])
                as List<ProductOptionGroupTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(ProductOptionGroup$.updatedAt)
          ? ((_patchMap[ProductOptionGroup$.updatedAt] is Function)
                    ? _patchMap[ProductOptionGroup$.updatedAt](this.updatedAt)
                    : (_patchMap[ProductOptionGroup$.updatedAt] is Patch)
                    ? _patchMap[ProductOptionGroup$.updatedAt].applyTo(
                        this.updatedAt,
                      )
                    : _patchMap[ProductOptionGroup$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProductOptionGroup &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        options == other.options &&
        translations == other.translations &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.code,
      this.createdAt,
      this.customFields,
      this.id,
      this.languageCode,
      this.name,
      this.options,
      this.translations,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'ProductOptionGroup(' +
        'code: ${code}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'options: ${options}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductOptionGroupToJson(this);
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

extension ProductOptionGroupPropertyHelpers on ProductOptionGroup {
  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
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

  bool get hasTranslations {
    return this.translations.isNotEmpty;
  }

  bool get noTranslations {
    return this.translations.isEmpty;
  }
}

extension ProductOptionGroupSerialization on ProductOptionGroup {
  Map<String, dynamic> toJson() {
    return _$ProductOptionGroupToJson(this);
  }
}

enum ProductOptionGroup$ {
  code,
  createdAt,
  customFields,
  id,
  languageCode,
  name_,
  options,
  translations,
  updatedAt,
}

class ProductOptionGroupPatch
    extends PatchBase<ProductOptionGroup, ProductOptionGroup$> {
  ProductOptionGroup applyTo(ProductOptionGroup entity) {
    return entity.patchWithProductOptionGroup(this);
  }

  ProductOptionGroupPatch withCode(String? value) {
    patchMap[ProductOptionGroup$.code] = value;
    return this;
  }

  ProductOptionGroupPatch withCreatedAt(DateTime? value) {
    patchMap[ProductOptionGroup$.createdAt] = value;
    return this;
  }

  ProductOptionGroupPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[ProductOptionGroup$.customFields] = value;
    return this;
  }

  ProductOptionGroupPatch withId(String? value) {
    patchMap[ProductOptionGroup$.id] = value;
    return this;
  }

  ProductOptionGroupPatch withLanguageCode(LanguageCode? value) {
    patchMap[ProductOptionGroup$.languageCode] = value;
    return this;
  }

  ProductOptionGroupPatch withName(String? value) {
    patchMap[ProductOptionGroup$.name_] = value;
    return this;
  }

  ProductOptionGroupPatch withOptions(List<ProductOption>? value) {
    patchMap[ProductOptionGroup$.options] = value;
    return this;
  }

  ProductOptionGroupPatch updateOptionsAt(
    int index,
    ProductOptionPatch Function(ProductOptionPatch) patch,
  ) {
    patchMap[ProductOptionGroup$.options] = (List<dynamic> list) {
      var updatedList = List<ProductOption>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductOptionPatch())
            .applyTo(updatedList[index] as ProductOption);
      }
      return updatedList;
    };
    return this;
  }

  ProductOptionGroupPatch withTranslations(
    List<ProductOptionGroupTranslation>? value,
  ) {
    patchMap[ProductOptionGroup$.translations] = value;
    return this;
  }

  ProductOptionGroupPatch updateTranslationsAt(
    int index,
    ProductOptionGroupTranslationPatch Function(
      ProductOptionGroupTranslationPatch,
    )
    patch,
  ) {
    patchMap[ProductOptionGroup$.translations] = (List<dynamic> list) {
      var updatedList = List<ProductOptionGroupTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductOptionGroupTranslationPatch())
            .applyTo(updatedList[index] as ProductOptionGroupTranslation);
      }
      return updatedList;
    };
    return this;
  }

  ProductOptionGroupPatch withUpdatedAt(DateTime? value) {
    patchMap[ProductOptionGroup$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [ProductOptionGroup] query construction
abstract final class ProductOptionGroupFields {
  static const code = Field<ProductOptionGroup, String>('code', _$code);

  static const createdAt = Field<ProductOptionGroup, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<ProductOptionGroup, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const id = Field<ProductOptionGroup, String>('id', _$id);

  static const languageCode = Field<ProductOptionGroup, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<ProductOptionGroup, String>('name', _$name);

  static const options = Field<ProductOptionGroup, List<ProductOption>>(
    'options',
    _$options,
  );

  static const translations =
      Field<ProductOptionGroup, List<ProductOptionGroupTranslation>>(
        'translations',
        _$translations,
      );

  static const updatedAt = Field<ProductOptionGroup, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static String _$code(ProductOptionGroup e) {
    return e.code;
  }

  static DateTime _$createdAt(ProductOptionGroup e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(ProductOptionGroup e) {
    return e.customFields;
  }

  static String _$id(ProductOptionGroup e) {
    return e.id;
  }

  static LanguageCode _$languageCode(ProductOptionGroup e) {
    return e.languageCode;
  }

  static String _$name(ProductOptionGroup e) {
    return e.name;
  }

  static List<ProductOption> _$options(ProductOptionGroup e) {
    return e.options;
  }

  static List<ProductOptionGroupTranslation> _$translations(
    ProductOptionGroup e,
  ) {
    return e.translations;
  }

  static DateTime _$updatedAt(ProductOptionGroup e) {
    return e.updatedAt;
  }
}

extension ProductOptionGroupCompareE on ProductOptionGroup {
  Map<String, dynamic> compareToProductOptionGroup(ProductOptionGroup other) {
    final Map<String, dynamic> diff = {};

    if (code != other.code) {
      diff['code'] = () => other.code;
    }

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (customFields != other.customFields) {
      diff['customFields'] = () => other.customFields;
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

    if (translations != other.translations) {
      diff['translations'] = () => other.translations;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
