// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'facet.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Facet {
  Facet({
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    List<FacetTranslation>? this.translations,
    required DateTime this.updatedAt,
    FacetValueList? this.valueList,
    List<FacetValue>? this.values,
  });

  factory Facet.fromJson(Map<String, dynamic> json) => _$FacetFromJson(json);

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final List<FacetTranslation>? translations;

  final DateTime updatedAt;

  final FacetValueList? valueList;

  final List<FacetValue>? values;

  Facet copyWith({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<FacetTranslation>? translations,
    DateTime? updatedAt,
    FacetValueList? valueList,
    List<FacetValue>? values,
  }) {
    return Facet(
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      translations: translations ?? this.translations,
      updatedAt: updatedAt ?? this.updatedAt,
      valueList: valueList ?? this.valueList,
      values: values ?? this.values,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Facet copyWithField<T>(Field<Facet, T> field, T value) {
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
      case 'translations':
        return copyWith(translations: value as List<FacetTranslation>?);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      case 'valueList':
        return copyWith(valueList: value as FacetValueList?);
      case 'values':
        return copyWith(values: value as List<FacetValue>?);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Facet has no settable field with this name',
        );
    }
  }

  Facet copyWithFacet({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    String? id,
    LanguageCode? languageCode,
    String? name,
    List<FacetTranslation>? translations,
    DateTime? updatedAt,
    FacetValueList? valueList,
    List<FacetValue>? values,
  }) {
    return copyWith(
      code: code,
      createdAt: createdAt,
      customFields: customFields,
      id: id,
      languageCode: languageCode,
      name: name,
      translations: translations,
      updatedAt: updatedAt,
      valueList: valueList,
      values: values,
    );
  }

  Facet patchWithFacet([FacetPatch? patchInput]) {
    final _patcher = patchInput ?? FacetPatch();
    final _patchMap = _patcher.patchMap;
    return Facet(
      code: _patchMap.containsKey(Facet$.code)
          ? ((_patchMap[Facet$.code] is Function)
                    ? _patchMap[Facet$.code](this.code)
                    : (_patchMap[Facet$.code] is Patch)
                    ? _patchMap[Facet$.code].applyTo(this.code)
                    : _patchMap[Facet$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(Facet$.createdAt)
          ? ((_patchMap[Facet$.createdAt] is Function)
                    ? _patchMap[Facet$.createdAt](this.createdAt)
                    : (_patchMap[Facet$.createdAt] is Patch)
                    ? _patchMap[Facet$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Facet$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(Facet$.customFields)
          ? ((_patchMap[Facet$.customFields] is Function)
                    ? _patchMap[Facet$.customFields](this.customFields)
                    : (_patchMap[Facet$.customFields] is Patch)
                    ? _patchMap[Facet$.customFields].applyTo(this.customFields)
                    : _patchMap[Facet$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      id: _patchMap.containsKey(Facet$.id)
          ? ((_patchMap[Facet$.id] is Function)
                    ? _patchMap[Facet$.id](this.id)
                    : (_patchMap[Facet$.id] is Patch)
                    ? _patchMap[Facet$.id].applyTo(this.id)
                    : _patchMap[Facet$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(Facet$.languageCode)
          ? ((_patchMap[Facet$.languageCode] is Function)
                    ? _patchMap[Facet$.languageCode](this.languageCode)
                    : (_patchMap[Facet$.languageCode] is Patch)
                    ? _patchMap[Facet$.languageCode].applyTo(this.languageCode)
                    : _patchMap[Facet$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(Facet$.name_)
          ? ((_patchMap[Facet$.name_] is Function)
                    ? _patchMap[Facet$.name_](this.name)
                    : (_patchMap[Facet$.name_] is Patch)
                    ? _patchMap[Facet$.name_].applyTo(this.name)
                    : _patchMap[Facet$.name_])
                as String
          : this.name,
      translations: _patchMap.containsKey(Facet$.translations)
          ? ((_patchMap[Facet$.translations] is Function)
                    ? _patchMap[Facet$.translations](this.translations)
                    : (_patchMap[Facet$.translations] is Patch)
                    ? _patchMap[Facet$.translations].applyTo(this.translations)
                    : _patchMap[Facet$.translations])
                as List<FacetTranslation>?
          : this.translations,
      updatedAt: _patchMap.containsKey(Facet$.updatedAt)
          ? ((_patchMap[Facet$.updatedAt] is Function)
                    ? _patchMap[Facet$.updatedAt](this.updatedAt)
                    : (_patchMap[Facet$.updatedAt] is Patch)
                    ? _patchMap[Facet$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Facet$.updatedAt])
                as DateTime
          : this.updatedAt,
      valueList: _patchMap.containsKey(Facet$.valueList)
          ? ((_patchMap[Facet$.valueList] is Function)
                    ? _patchMap[Facet$.valueList](this.valueList)
                    : (_patchMap[Facet$.valueList] is Patch)
                    ? _patchMap[Facet$.valueList].applyTo(this.valueList)
                    : _patchMap[Facet$.valueList])
                as FacetValueList?
          : this.valueList,
      values: _patchMap.containsKey(Facet$.values_)
          ? ((_patchMap[Facet$.values_] is Function)
                    ? _patchMap[Facet$.values_](this.values)
                    : (_patchMap[Facet$.values_] is Patch)
                    ? _patchMap[Facet$.values_].applyTo(this.values)
                    : _patchMap[Facet$.values_])
                as List<FacetValue>?
          : this.values,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Facet &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        translations == other.translations &&
        updatedAt == other.updatedAt &&
        valueList == other.valueList &&
        values == other.values;
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
      this.translations,
      this.updatedAt,
      this.valueList,
      this.values,
    );
  }

  @override
  String toString() {
    return 'Facet(' +
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
        'translations: ${translations}' +
        ', ' +
        'updatedAt: ${updatedAt}' +
        ', ' +
        'valueList: ${valueList}' +
        ', ' +
        'values: ${values})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$FacetToJson(this);
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

extension FacetPropertyHelpers on Facet {
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

  List<FacetTranslation> get translationsRequired {
    return this.translations ??
        (throw StateError('translations is required but was null'));
  }

  bool get hasTranslations {
    return this.translations?.isNotEmpty ?? false;
  }

  bool get noTranslations {
    return this.translations?.isEmpty ?? true;
  }

  bool get hasValueList {
    return this.valueList != null;
  }

  bool get noValueList {
    return this.valueList == null;
  }

  FacetValueList get valueListRequired {
    return this.valueList ??
        (throw StateError('valueList is required but was null'));
  }

  List<FacetValue> get valuesRequired {
    return this.values ?? (throw StateError('values is required but was null'));
  }

  bool get hasValues {
    return this.values?.isNotEmpty ?? false;
  }

  bool get noValues {
    return this.values?.isEmpty ?? true;
  }
}

extension FacetSerialization on Facet {
  Map<String, dynamic> toJson() {
    return _$FacetToJson(this);
  }
}

enum Facet$ {
  code,
  createdAt,
  customFields,
  id,
  languageCode,
  name_,
  translations,
  updatedAt,
  valueList,
  values_,
}

class FacetPatch extends PatchBase<Facet, Facet$> {
  Facet applyTo(Facet entity) {
    return entity.patchWithFacet(this);
  }

  FacetPatch withCode(String? value) {
    patchMap[Facet$.code] = value;
    return this;
  }

  FacetPatch withCreatedAt(DateTime? value) {
    patchMap[Facet$.createdAt] = value;
    return this;
  }

  FacetPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Facet$.customFields] = value;
    return this;
  }

  FacetPatch withId(String? value) {
    patchMap[Facet$.id] = value;
    return this;
  }

  FacetPatch withLanguageCode(LanguageCode? value) {
    patchMap[Facet$.languageCode] = value;
    return this;
  }

  FacetPatch withName(String? value) {
    patchMap[Facet$.name_] = value;
    return this;
  }

  FacetPatch withTranslations(List<FacetTranslation>? value) {
    patchMap[Facet$.translations] = value;
    return this;
  }

  FacetPatch updateTranslationsAt(
    int index,
    FacetTranslationPatch Function(FacetTranslationPatch) patch,
  ) {
    patchMap[Facet$.translations] = (List<dynamic> list) {
      var updatedList = List<FacetTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FacetTranslationPatch())
            .applyTo(updatedList[index] as FacetTranslation);
      }
      return updatedList;
    };
    return this;
  }

  FacetPatch withUpdatedAt(DateTime? value) {
    patchMap[Facet$.updatedAt] = value;
    return this;
  }

  FacetPatch withValueList(FacetValueList? value) {
    patchMap[Facet$.valueList] = value;
    return this;
  }

  FacetPatch withValueListPatch(FacetValueListPatch patch) {
    patchMap[Facet$.valueList] = patch;
    return this;
  }

  FacetPatch withValueListPatchFunc(
    FacetValueListPatch Function(FacetValueListPatch) patch,
  ) {
    patchMap[Facet$.valueList] = (dynamic current) {
      var currentPatch = FacetValueListPatch();
      return patch(currentPatch).applyTo(current as FacetValueList);
    };
    return this;
  }

  FacetPatch withValues(List<FacetValue>? value) {
    patchMap[Facet$.values_] = value;
    return this;
  }

  FacetPatch updateValuesAt(
    int index,
    FacetValuePatch Function(FacetValuePatch) patch,
  ) {
    patchMap[Facet$.values_] = (List<dynamic> list) {
      var updatedList = List<FacetValue>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(FacetValuePatch())
            .applyTo(updatedList[index] as FacetValue);
      }
      return updatedList;
    };
    return this;
  }
}

/// Field descriptors for [Facet] query construction
abstract final class FacetFields {
  static const code = Field<Facet, String>('code', _$code);

  static const createdAt = Field<Facet, DateTime>('createdAt', _$createdAt);

  static const customFields = Field<Facet, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const id = Field<Facet, String>('id', _$id);

  static const languageCode = Field<Facet, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<Facet, String>('name', _$name);

  static const translations = Field<Facet, List<FacetTranslation>?>(
    'translations',
    _$translations,
  );

  static const updatedAt = Field<Facet, DateTime>('updatedAt', _$updatedAt);

  static const valueList = Field<Facet, FacetValueList?>(
    'valueList',
    _$valueList,
  );

  static const values = Field<Facet, List<FacetValue>?>('values', _$values);

  static String _$code(Facet e) {
    return e.code;
  }

  static DateTime _$createdAt(Facet e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(Facet e) {
    return e.customFields;
  }

  static String _$id(Facet e) {
    return e.id;
  }

  static LanguageCode _$languageCode(Facet e) {
    return e.languageCode;
  }

  static String _$name(Facet e) {
    return e.name;
  }

  static List<FacetTranslation>? _$translations(Facet e) {
    return e.translations;
  }

  static DateTime _$updatedAt(Facet e) {
    return e.updatedAt;
  }

  static FacetValueList? _$valueList(Facet e) {
    return e.valueList;
  }

  static List<FacetValue>? _$values(Facet e) {
    return e.values;
  }
}

extension FacetCompareE on Facet {
  Map<String, dynamic> compareToFacet(Facet other) {
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

    if (translations != other.translations) {
      diff['translations'] = () => other.translations;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }

    if (valueList != other.valueList) {
      diff['valueList'] = () => other.valueList;
    }

    if (values != other.values) {
      diff['values'] = () => other.values;
    }
    return diff;
  }
}
