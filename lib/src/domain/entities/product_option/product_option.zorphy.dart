// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'product_option.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class ProductOption {
  ProductOption({
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.groupId,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    required List<ProductOptionTranslation> this.translations,
    required DateTime this.updatedAt,
  });

  factory ProductOption.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionFromJson(json);

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String groupId;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final List<ProductOptionTranslation> translations;

  final DateTime updatedAt;

  ProductOption copyWith({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? groupId,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOptionTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return ProductOption(
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      groupId: groupId ?? this.groupId,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  ProductOption copyWithField<T>(Field<ProductOption, T> field, T value) {
    switch (field.name) {
      case 'code':
        return copyWith(code: value as String);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'groupId':
        return copyWith(groupId: value as String);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode);
      case 'name':
        return copyWith(name: value as String);
      case 'translations':
        return copyWith(translations: value as List<ProductOptionTranslation>);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'ProductOption has no settable field with this name',
        );
    }
  }

  ProductOption copyWithProductOption({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? groupId,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<ProductOptionTranslation>? translations,
    DateTime? updatedAt,
  }) {
    return copyWith(
      code: code,
      createdAt: createdAt,
      customFields: customFields,
      groupId: groupId,
      id: id,
      languageCode: languageCode,
      name: name,
      translations: translations,
      updatedAt: updatedAt,
    );
  }

  ProductOption patchWithProductOption([ProductOptionPatch? patchInput]) {
    final _patcher = patchInput ?? ProductOptionPatch();
    final _patchMap = _patcher.patchMap;
    return ProductOption(
      code: _patchMap.containsKey(ProductOption$.code)
          ? ((_patchMap[ProductOption$.code] is Function)
                    ? _patchMap[ProductOption$.code](this.code)
                    : (_patchMap[ProductOption$.code] is Patch)
                    ? _patchMap[ProductOption$.code].applyTo(this.code)
                    : _patchMap[ProductOption$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(ProductOption$.createdAt)
          ? ((_patchMap[ProductOption$.createdAt] is Function)
                    ? _patchMap[ProductOption$.createdAt](this.createdAt)
                    : (_patchMap[ProductOption$.createdAt] is Patch)
                    ? _patchMap[ProductOption$.createdAt].applyTo(
                        this.createdAt,
                      )
                    : _patchMap[ProductOption$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(ProductOption$.customFields)
          ? ((_patchMap[ProductOption$.customFields] is Function)
                    ? _patchMap[ProductOption$.customFields](this.customFields)
                    : (_patchMap[ProductOption$.customFields] is Patch)
                    ? _patchMap[ProductOption$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[ProductOption$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      groupId: _patchMap.containsKey(ProductOption$.groupId)
          ? ((_patchMap[ProductOption$.groupId] is Function)
                    ? _patchMap[ProductOption$.groupId](this.groupId)
                    : (_patchMap[ProductOption$.groupId] is Patch)
                    ? _patchMap[ProductOption$.groupId].applyTo(this.groupId)
                    : _patchMap[ProductOption$.groupId])
                as String
          : this.groupId,
      id: _patchMap.containsKey(ProductOption$.id)
          ? ((_patchMap[ProductOption$.id] is Function)
                    ? _patchMap[ProductOption$.id](this.id)
                    : (_patchMap[ProductOption$.id] is Patch)
                    ? _patchMap[ProductOption$.id].applyTo(this.id)
                    : _patchMap[ProductOption$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(ProductOption$.languageCode)
          ? ((_patchMap[ProductOption$.languageCode] is Function)
                    ? _patchMap[ProductOption$.languageCode](this.languageCode)
                    : (_patchMap[ProductOption$.languageCode] is Patch)
                    ? _patchMap[ProductOption$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[ProductOption$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(ProductOption$.name_)
          ? ((_patchMap[ProductOption$.name_] is Function)
                    ? _patchMap[ProductOption$.name_](this.name)
                    : (_patchMap[ProductOption$.name_] is Patch)
                    ? _patchMap[ProductOption$.name_].applyTo(this.name)
                    : _patchMap[ProductOption$.name_])
                as String
          : this.name,
      translations: _patchMap.containsKey(ProductOption$.translations)
          ? ((_patchMap[ProductOption$.translations] is Function)
                    ? _patchMap[ProductOption$.translations](this.translations)
                    : (_patchMap[ProductOption$.translations] is Patch)
                    ? _patchMap[ProductOption$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[ProductOption$.translations])
                as List<ProductOptionTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(ProductOption$.updatedAt)
          ? ((_patchMap[ProductOption$.updatedAt] is Function)
                    ? _patchMap[ProductOption$.updatedAt](this.updatedAt)
                    : (_patchMap[ProductOption$.updatedAt] is Patch)
                    ? _patchMap[ProductOption$.updatedAt].applyTo(
                        this.updatedAt,
                      )
                    : _patchMap[ProductOption$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProductOption &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        groupId == other.groupId &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        translations == other.translations &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.code,
      this.createdAt,
      this.customFields,
      this.groupId,
      this.id,
      this.languageCode,
      this.name,
      this.translations,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'ProductOption(' +
        'code: ${code}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'groupId: ${groupId}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ProductOptionToJson(this);
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

extension ProductOptionPropertyHelpers on ProductOption {
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

  bool get hasGroupId {
    return this.groupId.isNotEmpty;
  }

  bool get noGroupId {
    return this.groupId.isEmpty;
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

  bool get hasTranslations {
    return this.translations.isNotEmpty;
  }

  bool get noTranslations {
    return this.translations.isEmpty;
  }
}

extension ProductOptionSerialization on ProductOption {
  Map<String, dynamic> toJson() {
    return _$ProductOptionToJson(this);
  }
}

enum ProductOption$ {
  code,
  createdAt,
  customFields,
  groupId,
  id,
  languageCode,
  name_,
  translations,
  updatedAt,
}

class ProductOptionPatch extends PatchBase<ProductOption, ProductOption$> {
  ProductOption applyTo(ProductOption entity) {
    return entity.patchWithProductOption(this);
  }

  ProductOptionPatch withCode(String? value) {
    patchMap[ProductOption$.code] = value;
    return this;
  }

  ProductOptionPatch withCreatedAt(DateTime? value) {
    patchMap[ProductOption$.createdAt] = value;
    return this;
  }

  ProductOptionPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[ProductOption$.customFields] = value;
    return this;
  }

  ProductOptionPatch withGroupId(String? value) {
    patchMap[ProductOption$.groupId] = value;
    return this;
  }

  ProductOptionPatch withId(String? value) {
    patchMap[ProductOption$.id] = value;
    return this;
  }

  ProductOptionPatch withLanguageCode(LanguageCode? value) {
    patchMap[ProductOption$.languageCode] = value;
    return this;
  }

  ProductOptionPatch withName(String? value) {
    patchMap[ProductOption$.name_] = value;
    return this;
  }

  ProductOptionPatch withTranslations(List<ProductOptionTranslation>? value) {
    patchMap[ProductOption$.translations] = value;
    return this;
  }

  ProductOptionPatch updateTranslationsAt(
    int index,
    ProductOptionTranslationPatch Function(ProductOptionTranslationPatch) patch,
  ) {
    patchMap[ProductOption$.translations] = (List<dynamic> list) {
      var updatedList = List<ProductOptionTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(ProductOptionTranslationPatch())
            .applyTo(updatedList[index] as ProductOptionTranslation);
      }
      return updatedList;
    };
    return this;
  }

  ProductOptionPatch withUpdatedAt(DateTime? value) {
    patchMap[ProductOption$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [ProductOption] query construction
abstract final class ProductOptionFields {
  static const code = Field<ProductOption, String>('code', _$code);

  static const createdAt = Field<ProductOption, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<ProductOption, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const groupId = Field<ProductOption, String>('groupId', _$groupId);

  static const id = Field<ProductOption, String>('id', _$id);

  static const languageCode = Field<ProductOption, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<ProductOption, String>('name', _$name);

  static const translations =
      Field<ProductOption, List<ProductOptionTranslation>>(
        'translations',
        _$translations,
      );

  static const updatedAt = Field<ProductOption, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static String _$code(ProductOption e) {
    return e.code;
  }

  static DateTime _$createdAt(ProductOption e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(ProductOption e) {
    return e.customFields;
  }

  static String _$groupId(ProductOption e) {
    return e.groupId;
  }

  static String _$id(ProductOption e) {
    return e.id;
  }

  static LanguageCode _$languageCode(ProductOption e) {
    return e.languageCode;
  }

  static String _$name(ProductOption e) {
    return e.name;
  }

  static List<ProductOptionTranslation> _$translations(ProductOption e) {
    return e.translations;
  }

  static DateTime _$updatedAt(ProductOption e) {
    return e.updatedAt;
  }
}

extension ProductOptionCompareE on ProductOption {
  Map<String, dynamic> compareToProductOption(ProductOption other) {
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

    if (groupId != other.groupId) {
      diff['groupId'] = () => other.groupId;
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

    if (translations != other.translations) {
      diff['translations'] = () => other.translations;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
