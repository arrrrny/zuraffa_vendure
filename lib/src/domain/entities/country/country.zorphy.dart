// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'country.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Country {
  Country({
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required bool this.enabled,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    String? this.parentId,
    required List<RegionTranslation> this.translations,
    required String this.type,
    required DateTime this.updatedAt,
  });

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final bool enabled;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final String? parentId;

  final List<RegionTranslation> translations;

  final String type;

  final DateTime updatedAt;

  Country copyWith({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    bool? enabled,
    String? id,
    LanguageCode? languageCode,
    String? name,
    String? parentId,
    List<RegionTranslation>? translations,
    String? type,
    DateTime? updatedAt,
  }) {
    return Country(
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      enabled: enabled ?? this.enabled,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      parentId: parentId ?? this.parentId,
      translations: translations ?? this.translations,
      type: type ?? this.type,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Country copyWithField<T>(Field<Country, T> field, T value) {
    switch (field.name) {
      case 'code':
        return copyWith(code: value as String);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'enabled':
        return copyWith(enabled: value as bool);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode);
      case 'name':
        return copyWith(name: value as String);
      case 'parentId':
        return copyWith(parentId: value as String?);
      case 'translations':
        return copyWith(translations: value as List<RegionTranslation>);
      case 'type':
        return copyWith(type: value as String);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Country has no settable field with this name',
        );
    }
  }

  Country copyWithCountry({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    bool? enabled,
    String? id,
    LanguageCode? languageCode,
    String? name,
    String? parentId,
    List<RegionTranslation>? translations,
    String? type,
    DateTime? updatedAt,
  }) {
    return copyWith(
      code: code,
      createdAt: createdAt,
      customFields: customFields,
      enabled: enabled,
      id: id,
      languageCode: languageCode,
      name: name,
      parentId: parentId,
      translations: translations,
      type: type,
      updatedAt: updatedAt,
    );
  }

  Country patchWithCountry([CountryPatch? patchInput]) {
    final _patcher = patchInput ?? CountryPatch();
    final _patchMap = _patcher.patchMap;
    return Country(
      code: _patchMap.containsKey(Country$.code)
          ? ((_patchMap[Country$.code] is Function)
                    ? _patchMap[Country$.code](this.code)
                    : (_patchMap[Country$.code] is Patch)
                    ? _patchMap[Country$.code].applyTo(this.code)
                    : _patchMap[Country$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(Country$.createdAt)
          ? ((_patchMap[Country$.createdAt] is Function)
                    ? _patchMap[Country$.createdAt](this.createdAt)
                    : (_patchMap[Country$.createdAt] is Patch)
                    ? _patchMap[Country$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Country$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(Country$.customFields)
          ? ((_patchMap[Country$.customFields] is Function)
                    ? _patchMap[Country$.customFields](this.customFields)
                    : (_patchMap[Country$.customFields] is Patch)
                    ? _patchMap[Country$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[Country$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      enabled: _patchMap.containsKey(Country$.enabled)
          ? ((_patchMap[Country$.enabled] is Function)
                    ? _patchMap[Country$.enabled](this.enabled)
                    : (_patchMap[Country$.enabled] is Patch)
                    ? _patchMap[Country$.enabled].applyTo(this.enabled)
                    : _patchMap[Country$.enabled])
                as bool
          : this.enabled,
      id: _patchMap.containsKey(Country$.id)
          ? ((_patchMap[Country$.id] is Function)
                    ? _patchMap[Country$.id](this.id)
                    : (_patchMap[Country$.id] is Patch)
                    ? _patchMap[Country$.id].applyTo(this.id)
                    : _patchMap[Country$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(Country$.languageCode)
          ? ((_patchMap[Country$.languageCode] is Function)
                    ? _patchMap[Country$.languageCode](this.languageCode)
                    : (_patchMap[Country$.languageCode] is Patch)
                    ? _patchMap[Country$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[Country$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(Country$.name_)
          ? ((_patchMap[Country$.name_] is Function)
                    ? _patchMap[Country$.name_](this.name)
                    : (_patchMap[Country$.name_] is Patch)
                    ? _patchMap[Country$.name_].applyTo(this.name)
                    : _patchMap[Country$.name_])
                as String
          : this.name,
      parentId: _patchMap.containsKey(Country$.parentId)
          ? ((_patchMap[Country$.parentId] is Function)
                    ? _patchMap[Country$.parentId](this.parentId)
                    : (_patchMap[Country$.parentId] is Patch)
                    ? _patchMap[Country$.parentId].applyTo(this.parentId)
                    : _patchMap[Country$.parentId])
                as String?
          : this.parentId,
      translations: _patchMap.containsKey(Country$.translations)
          ? ((_patchMap[Country$.translations] is Function)
                    ? _patchMap[Country$.translations](this.translations)
                    : (_patchMap[Country$.translations] is Patch)
                    ? _patchMap[Country$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[Country$.translations])
                as List<RegionTranslation>
          : this.translations,
      type: _patchMap.containsKey(Country$.type)
          ? ((_patchMap[Country$.type] is Function)
                    ? _patchMap[Country$.type](this.type)
                    : (_patchMap[Country$.type] is Patch)
                    ? _patchMap[Country$.type].applyTo(this.type)
                    : _patchMap[Country$.type])
                as String
          : this.type,
      updatedAt: _patchMap.containsKey(Country$.updatedAt)
          ? ((_patchMap[Country$.updatedAt] is Function)
                    ? _patchMap[Country$.updatedAt](this.updatedAt)
                    : (_patchMap[Country$.updatedAt] is Patch)
                    ? _patchMap[Country$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Country$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Country &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        enabled == other.enabled &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        parentId == other.parentId &&
        translations == other.translations &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.code,
      this.createdAt,
      this.customFields,
      this.enabled,
      this.id,
      this.languageCode,
      this.name,
      this.parentId,
      this.translations,
      this.type,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Country(' +
        'code: ${code}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'enabled: ${enabled}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'parentId: ${parentId}' +
        ', ' +
        'translations: ${translations}' +
        ', ' +
        'type: ${type}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CountryToJson(this);
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

extension CountryPropertyHelpers on Country {
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

  bool get hasTranslations {
    return this.translations.isNotEmpty;
  }

  bool get noTranslations {
    return this.translations.isEmpty;
  }

  bool get hasType {
    return this.type.isNotEmpty;
  }

  bool get noType {
    return this.type.isEmpty;
  }
}

extension CountrySerialization on Country {
  Map<String, dynamic> toJson() {
    return _$CountryToJson(this);
  }
}

enum Country$ {
  code,
  createdAt,
  customFields,
  enabled,
  id,
  languageCode,
  name_,
  parentId,
  translations,
  type,
  updatedAt,
}

class CountryPatch extends PatchBase<Country, Country$> {
  Country applyTo(Country entity) {
    return entity.patchWithCountry(this);
  }

  CountryPatch withCode(String? value) {
    patchMap[Country$.code] = value;
    return this;
  }

  CountryPatch withCreatedAt(DateTime? value) {
    patchMap[Country$.createdAt] = value;
    return this;
  }

  CountryPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Country$.customFields] = value;
    return this;
  }

  CountryPatch withEnabled(bool? value) {
    patchMap[Country$.enabled] = value;
    return this;
  }

  CountryPatch withId(String? value) {
    patchMap[Country$.id] = value;
    return this;
  }

  CountryPatch withLanguageCode(LanguageCode? value) {
    patchMap[Country$.languageCode] = value;
    return this;
  }

  CountryPatch withName(String? value) {
    patchMap[Country$.name_] = value;
    return this;
  }

  CountryPatch withParentId(String? value) {
    patchMap[Country$.parentId] = value;
    return this;
  }

  CountryPatch withTranslations(List<RegionTranslation>? value) {
    patchMap[Country$.translations] = value;
    return this;
  }

  CountryPatch updateTranslationsAt(
    int index,
    RegionTranslationPatch Function(RegionTranslationPatch) patch,
  ) {
    patchMap[Country$.translations] = (List<dynamic> list) {
      var updatedList = List<RegionTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(RegionTranslationPatch())
            .applyTo(updatedList[index] as RegionTranslation);
      }
      return updatedList;
    };
    return this;
  }

  CountryPatch withType(String? value) {
    patchMap[Country$.type] = value;
    return this;
  }

  CountryPatch withUpdatedAt(DateTime? value) {
    patchMap[Country$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Country] query construction
abstract final class CountryFields {
  static const code = Field<Country, String>('code', _$code);

  static const createdAt = Field<Country, DateTime>('createdAt', _$createdAt);

  static const customFields = Field<Country, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const enabled = Field<Country, bool>('enabled', _$enabled);

  static const id = Field<Country, String>('id', _$id);

  static const languageCode = Field<Country, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<Country, String>('name', _$name);

  static const parentId = Field<Country, String?>('parentId', _$parentId);

  static const translations = Field<Country, List<RegionTranslation>>(
    'translations',
    _$translations,
  );

  static const type = Field<Country, String>('type', _$type);

  static const updatedAt = Field<Country, DateTime>('updatedAt', _$updatedAt);

  static String _$code(Country e) {
    return e.code;
  }

  static DateTime _$createdAt(Country e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(Country e) {
    return e.customFields;
  }

  static bool _$enabled(Country e) {
    return e.enabled;
  }

  static String _$id(Country e) {
    return e.id;
  }

  static LanguageCode _$languageCode(Country e) {
    return e.languageCode;
  }

  static String _$name(Country e) {
    return e.name;
  }

  static String? _$parentId(Country e) {
    return e.parentId;
  }

  static List<RegionTranslation> _$translations(Country e) {
    return e.translations;
  }

  static String _$type(Country e) {
    return e.type;
  }

  static DateTime _$updatedAt(Country e) {
    return e.updatedAt;
  }
}

extension CountryCompareE on Country {
  Map<String, dynamic> compareToCountry(Country other) {
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

    if (enabled != other.enabled) {
      diff['enabled'] = () => other.enabled;
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

    if (parentId != other.parentId) {
      diff['parentId'] = () => other.parentId;
    }

    if (translations != other.translations) {
      diff['translations'] = () => other.translations;
    }

    if (type != other.type) {
      diff['type'] = () => other.type;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
