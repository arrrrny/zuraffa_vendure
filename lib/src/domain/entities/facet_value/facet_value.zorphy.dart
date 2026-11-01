// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'facet_value.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class FacetValue {
  FacetValue({
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.facetId,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    required List<FacetValueTranslation> this.translations,
    required DateTime this.updatedAt,
    Facet? this.facet,
  });

  factory FacetValue.fromJson(Map<String, dynamic> json) =>
      _$FacetValueFromJson(json);

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String facetId;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final List<FacetValueTranslation> translations;

  final DateTime updatedAt;

  final Facet? facet;

  FacetValue copyWith({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? facetId,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<FacetValueTranslation>? translations,
    DateTime? updatedAt,
    Facet? facet,
  }) {
    return FacetValue(
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      facetId: facetId ?? this.facetId,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
      facet: facet ?? this.facet,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  FacetValue copyWithField<T>(Field<FacetValue, T> field, T value) {
    switch (field.name) {
      case 'code':
        return copyWith(code: value as String);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'facetId':
        return copyWith(facetId: value as String);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode);
      case 'name':
        return copyWith(name: value as String);
      case 'translations':
        return copyWith(translations: value as List<FacetValueTranslation>);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      case 'facet':
        return copyWith(facet: value as Facet?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'FacetValue has no settable field with this name',
        );
    }
  }

  FacetValue copyWithFacetValue({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? facetId,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<FacetValueTranslation>? translations,
    DateTime? updatedAt,
    Facet? facet,
  }) {
    return copyWith(
      code: code,
      createdAt: createdAt,
      customFields: customFields,
      facetId: facetId,
      id: id,
      languageCode: languageCode,
      name: name,
      translations: translations,
      updatedAt: updatedAt,
      facet: facet,
    );
  }

  FacetValue patchWithFacetValue([FacetValuePatch? patchInput]) {
    final _patcher = patchInput ?? FacetValuePatch();
    final _patchMap = _patcher.patchMap;
    return FacetValue(
      code: _patchMap.containsKey(FacetValue$.code)
          ? ((_patchMap[FacetValue$.code] is Function)
                    ? _patchMap[FacetValue$.code](this.code)
                    : (_patchMap[FacetValue$.code] is Patch)
                    ? _patchMap[FacetValue$.code].applyTo(this.code)
                    : _patchMap[FacetValue$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(FacetValue$.createdAt)
          ? ((_patchMap[FacetValue$.createdAt] is Function)
                    ? _patchMap[FacetValue$.createdAt](this.createdAt)
                    : (_patchMap[FacetValue$.createdAt] is Patch)
                    ? _patchMap[FacetValue$.createdAt].applyTo(this.createdAt)
                    : _patchMap[FacetValue$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(FacetValue$.customFields)
          ? ((_patchMap[FacetValue$.customFields] is Function)
                    ? _patchMap[FacetValue$.customFields](this.customFields)
                    : (_patchMap[FacetValue$.customFields] is Patch)
                    ? _patchMap[FacetValue$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[FacetValue$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      facetId: _patchMap.containsKey(FacetValue$.facetId)
          ? ((_patchMap[FacetValue$.facetId] is Function)
                    ? _patchMap[FacetValue$.facetId](this.facetId)
                    : (_patchMap[FacetValue$.facetId] is Patch)
                    ? _patchMap[FacetValue$.facetId].applyTo(this.facetId)
                    : _patchMap[FacetValue$.facetId])
                as String
          : this.facetId,
      id: _patchMap.containsKey(FacetValue$.id)
          ? ((_patchMap[FacetValue$.id] is Function)
                    ? _patchMap[FacetValue$.id](this.id)
                    : (_patchMap[FacetValue$.id] is Patch)
                    ? _patchMap[FacetValue$.id].applyTo(this.id)
                    : _patchMap[FacetValue$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(FacetValue$.languageCode)
          ? ((_patchMap[FacetValue$.languageCode] is Function)
                    ? _patchMap[FacetValue$.languageCode](this.languageCode)
                    : (_patchMap[FacetValue$.languageCode] is Patch)
                    ? _patchMap[FacetValue$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[FacetValue$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(FacetValue$.name_)
          ? ((_patchMap[FacetValue$.name_] is Function)
                    ? _patchMap[FacetValue$.name_](this.name)
                    : (_patchMap[FacetValue$.name_] is Patch)
                    ? _patchMap[FacetValue$.name_].applyTo(this.name)
                    : _patchMap[FacetValue$.name_])
                as String
          : this.name,
      translations: _patchMap.containsKey(FacetValue$.translations)
          ? ((_patchMap[FacetValue$.translations] is Function)
                    ? _patchMap[FacetValue$.translations](this.translations)
                    : (_patchMap[FacetValue$.translations] is Patch)
                    ? _patchMap[FacetValue$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[FacetValue$.translations])
                as List<FacetValueTranslation>
          : this.translations,
      updatedAt: _patchMap.containsKey(FacetValue$.updatedAt)
          ? ((_patchMap[FacetValue$.updatedAt] is Function)
                    ? _patchMap[FacetValue$.updatedAt](this.updatedAt)
                    : (_patchMap[FacetValue$.updatedAt] is Patch)
                    ? _patchMap[FacetValue$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[FacetValue$.updatedAt])
                as DateTime
          : this.updatedAt,
      facet: _patchMap.containsKey(FacetValue$.facet)
          ? ((_patchMap[FacetValue$.facet] is Function)
                    ? _patchMap[FacetValue$.facet](this.facet)
                    : (_patchMap[FacetValue$.facet] is Patch)
                    ? _patchMap[FacetValue$.facet].applyTo(this.facet)
                    : _patchMap[FacetValue$.facet])
                as Facet?
          : this.facet,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FacetValue &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        facetId == other.facetId &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        translations == other.translations &&
        updatedAt == other.updatedAt &&
        facet == other.facet;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.code,
      this.createdAt,
      this.customFields,
      this.facetId,
      this.id,
      this.languageCode,
      this.name,
      this.translations,
      this.updatedAt,
      this.facet,
    );
  }

  @override
  String toString() {
    return 'FacetValue(' +
        'code: ${code}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'facetId: ${facetId}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt}' +
        ', ' +
        'facet: ${facet})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$FacetValueToJson(this);
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

extension FacetValuePropertyHelpers on FacetValue {
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

  bool get hasFacetId {
    return this.facetId.isNotEmpty;
  }

  bool get noFacetId {
    return this.facetId.isEmpty;
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

  bool get hasFacet {
    return this.facet != null;
  }

  bool get noFacet {
    return this.facet == null;
  }

  Facet get facetRequired {
    return this.facet ?? (throw StateError('facet is required but was null'));
  }
}

extension FacetValueSerialization on FacetValue {
  Map<String, dynamic> toJson() {
    return _$FacetValueToJson(this);
  }
}

enum FacetValue$ {
  code,
  createdAt,
  customFields,
  facetId,
  id,
  languageCode,
  name_,
  translations,
  updatedAt,
  facet,
}

class FacetValuePatch extends PatchBase<FacetValue, FacetValue$> {
  FacetValue applyTo(FacetValue entity) {
    return entity.patchWithFacetValue(this);
  }

  FacetValuePatch withCode(String? value) {
    patchMap[FacetValue$.code] = value;
    return this;
  }

  FacetValuePatch withCreatedAt(DateTime? value) {
    patchMap[FacetValue$.createdAt] = value;
    return this;
  }

  FacetValuePatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[FacetValue$.customFields] = value;
    return this;
  }

  FacetValuePatch withFacetId(String? value) {
    patchMap[FacetValue$.facetId] = value;
    return this;
  }

  FacetValuePatch withId(String? value) {
    patchMap[FacetValue$.id] = value;
    return this;
  }

  FacetValuePatch withLanguageCode(LanguageCode? value) {
    patchMap[FacetValue$.languageCode] = value;
    return this;
  }

  FacetValuePatch withName(String? value) {
    patchMap[FacetValue$.name_] = value;
    return this;
  }

  FacetValuePatch withTranslations(List<FacetValueTranslation>? value) {
    patchMap[FacetValue$.translations] = value;
    return this;
  }

  FacetValuePatch updateTranslationsAt(
    int index,
    FacetValueTranslationPatch Function(FacetValueTranslationPatch) patch,
  ) {
    patchMap[FacetValue$.translations] = (List<dynamic> list) {
      var updatedList = List<FacetValueTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FacetValueTranslationPatch())
            .applyTo(updatedList[index] as FacetValueTranslation);
      }
      return updatedList;
    };
    return this;
  }

  FacetValuePatch withUpdatedAt(DateTime? value) {
    patchMap[FacetValue$.updatedAt] = value;
    return this;
  }

  FacetValuePatch withFacet(Facet? value) {
    patchMap[FacetValue$.facet] = value;
    return this;
  }

  FacetValuePatch withFacetPatch(FacetPatch patch) {
    patchMap[FacetValue$.facet] = patch;
    return this;
  }

  FacetValuePatch withFacetPatchFunc(FacetPatch Function(FacetPatch) patch) {
    patchMap[FacetValue$.facet] = (dynamic current) {
      var currentPatch = FacetPatch();
      return patch(currentPatch).applyTo(current as Facet);
    };
    return this;
  }
}

/// Field descriptors for [FacetValue] query construction
abstract final class FacetValueFields {
  static const code = Field<FacetValue, String>('code', _$code);

  static const createdAt = Field<FacetValue, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const customFields = Field<FacetValue, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const facetId = Field<FacetValue, String>('facetId', _$facetId);

  static const id = Field<FacetValue, String>('id', _$id);

  static const languageCode = Field<FacetValue, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<FacetValue, String>('name', _$name);

  static const translations = Field<FacetValue, List<FacetValueTranslation>>(
    'translations',
    _$translations,
  );

  static const updatedAt = Field<FacetValue, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static const facet = Field<FacetValue, Facet?>('facet', _$facet);

  static String _$code(FacetValue e) {
    return e.code;
  }

  static DateTime _$createdAt(FacetValue e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(FacetValue e) {
    return e.customFields;
  }

  static String _$facetId(FacetValue e) {
    return e.facetId;
  }

  static String _$id(FacetValue e) {
    return e.id;
  }

  static LanguageCode _$languageCode(FacetValue e) {
    return e.languageCode;
  }

  static String _$name(FacetValue e) {
    return e.name;
  }

  static List<FacetValueTranslation> _$translations(FacetValue e) {
    return e.translations;
  }

  static DateTime _$updatedAt(FacetValue e) {
    return e.updatedAt;
  }

  static Facet? _$facet(FacetValue e) {
    return e.facet;
  }
}

extension FacetValueCompareE on FacetValue {
  Map<String, dynamic> compareToFacetValue(FacetValue other) {
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

    if (facetId != other.facetId) {
      diff['facetId'] = () => other.facetId;
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

    if (facet != other.facet) {
      diff['facet'] = () => other.facet;
    }
    return diff;
  }
}
