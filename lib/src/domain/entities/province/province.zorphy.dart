// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'province.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Province {
  Province({
    required String this.code,
    required DateTime this.createdAt,
    Map<String, dynamic>? this.customFields,
    required bool this.enabled,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    Region? this.parent,
    String? this.parentId,
    required List<RegionTranslation> this.translations,
    required String this.type,
    required DateTime this.updatedAt,
  });

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);

  final String code;

  final DateTime createdAt;

  final Map<String, dynamic>? customFields;

  final bool enabled;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final Region? parent;

  final String? parentId;

  final List<RegionTranslation> translations;

  final String type;

  final DateTime updatedAt;

  Province copyWith({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    bool? enabled,
    String? id,
    LanguageCode? languageCode,
    String? name,
    Region? parent,
    String? parentId,
    List<RegionTranslation>? translations,
    String? type,
    DateTime? updatedAt,
  }) {
    return Province(
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      customFields: customFields ?? this.customFields,
      enabled: enabled ?? this.enabled,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      parent: parent ?? this.parent,
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
  Province copyWithField<T>(Field<Province, T> field, T value) {
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
      case 'parent':
        return copyWith(parent: value as Region?);
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
          'Province has no settable field with this name',
        );
    }
  }

  Province copyWithProvince({
    String? code,
    DateTime? createdAt,
    Map<String, dynamic>? customFields,
    bool? enabled,
    String? id,
    LanguageCode? languageCode,
    String? name,
    Region? parent,
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
      parent: parent,
      parentId: parentId,
      translations: translations,
      type: type,
      updatedAt: updatedAt,
    );
  }

  Province patchWithProvince([ProvincePatch? patchInput]) {
    final _patcher = patchInput ?? ProvincePatch();
    final _patchMap = _patcher.patchMap;
    return Province(
      code: _patchMap.containsKey(Province$.code)
          ? ((_patchMap[Province$.code] is Function)
                    ? _patchMap[Province$.code](this.code)
                    : (_patchMap[Province$.code] is Patch)
                    ? _patchMap[Province$.code].applyTo(this.code)
                    : _patchMap[Province$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(Province$.createdAt)
          ? ((_patchMap[Province$.createdAt] is Function)
                    ? _patchMap[Province$.createdAt](this.createdAt)
                    : (_patchMap[Province$.createdAt] is Patch)
                    ? _patchMap[Province$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Province$.createdAt])
                as DateTime
          : this.createdAt,
      customFields: _patchMap.containsKey(Province$.customFields)
          ? ((_patchMap[Province$.customFields] is Function)
                    ? _patchMap[Province$.customFields](this.customFields)
                    : (_patchMap[Province$.customFields] is Patch)
                    ? _patchMap[Province$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[Province$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      enabled: _patchMap.containsKey(Province$.enabled)
          ? ((_patchMap[Province$.enabled] is Function)
                    ? _patchMap[Province$.enabled](this.enabled)
                    : (_patchMap[Province$.enabled] is Patch)
                    ? _patchMap[Province$.enabled].applyTo(this.enabled)
                    : _patchMap[Province$.enabled])
                as bool
          : this.enabled,
      id: _patchMap.containsKey(Province$.id)
          ? ((_patchMap[Province$.id] is Function)
                    ? _patchMap[Province$.id](this.id)
                    : (_patchMap[Province$.id] is Patch)
                    ? _patchMap[Province$.id].applyTo(this.id)
                    : _patchMap[Province$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(Province$.languageCode)
          ? ((_patchMap[Province$.languageCode] is Function)
                    ? _patchMap[Province$.languageCode](this.languageCode)
                    : (_patchMap[Province$.languageCode] is Patch)
                    ? _patchMap[Province$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[Province$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(Province$.name_)
          ? ((_patchMap[Province$.name_] is Function)
                    ? _patchMap[Province$.name_](this.name)
                    : (_patchMap[Province$.name_] is Patch)
                    ? _patchMap[Province$.name_].applyTo(this.name)
                    : _patchMap[Province$.name_])
                as String
          : this.name,
      parent: _patchMap.containsKey(Province$.parent)
          ? ((_patchMap[Province$.parent] is Function)
                    ? _patchMap[Province$.parent](this.parent)
                    : (_patchMap[Province$.parent] is Patch)
                    ? _patchMap[Province$.parent].applyTo(this.parent)
                    : _patchMap[Province$.parent])
                as Region?
          : this.parent,
      parentId: _patchMap.containsKey(Province$.parentId)
          ? ((_patchMap[Province$.parentId] is Function)
                    ? _patchMap[Province$.parentId](this.parentId)
                    : (_patchMap[Province$.parentId] is Patch)
                    ? _patchMap[Province$.parentId].applyTo(this.parentId)
                    : _patchMap[Province$.parentId])
                as String?
          : this.parentId,
      translations: _patchMap.containsKey(Province$.translations)
          ? ((_patchMap[Province$.translations] is Function)
                    ? _patchMap[Province$.translations](this.translations)
                    : (_patchMap[Province$.translations] is Patch)
                    ? _patchMap[Province$.translations].applyTo(
                        this.translations,
                      )
                    : _patchMap[Province$.translations])
                as List<RegionTranslation>
          : this.translations,
      type: _patchMap.containsKey(Province$.type)
          ? ((_patchMap[Province$.type] is Function)
                    ? _patchMap[Province$.type](this.type)
                    : (_patchMap[Province$.type] is Patch)
                    ? _patchMap[Province$.type].applyTo(this.type)
                    : _patchMap[Province$.type])
                as String
          : this.type,
      updatedAt: _patchMap.containsKey(Province$.updatedAt)
          ? ((_patchMap[Province$.updatedAt] is Function)
                    ? _patchMap[Province$.updatedAt](this.updatedAt)
                    : (_patchMap[Province$.updatedAt] is Patch)
                    ? _patchMap[Province$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Province$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Province &&
        code == other.code &&
        createdAt == other.createdAt &&
        customFields == other.customFields &&
        enabled == other.enabled &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        parent == other.parent &&
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
      this.parent,
      this.parentId,
      this.translations,
      this.type,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Province(' +
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
        'parent: ${parent}' +
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
    final Map<String, dynamic> data = _$ProvinceToJson(this);
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

extension ProvincePropertyHelpers on Province {
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

  bool get hasParent {
    return this.parent != null;
  }

  bool get noParent {
    return this.parent == null;
  }

  Region get parentRequired {
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

extension ProvinceSerialization on Province {
  Map<String, dynamic> toJson() {
    return _$ProvinceToJson(this);
  }
}

enum Province$ {
  code,
  createdAt,
  customFields,
  enabled,
  id,
  languageCode,
  name_,
  parent,
  parentId,
  translations,
  type,
  updatedAt,
}

class ProvincePatch extends PatchBase<Province, Province$> {
  Province applyTo(Province entity) {
    return entity.patchWithProvince(this);
  }

  ProvincePatch withCode(String? value) {
    patchMap[Province$.code] = value;
    return this;
  }

  ProvincePatch withCreatedAt(DateTime? value) {
    patchMap[Province$.createdAt] = value;
    return this;
  }

  ProvincePatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Province$.customFields] = value;
    return this;
  }

  ProvincePatch withEnabled(bool? value) {
    patchMap[Province$.enabled] = value;
    return this;
  }

  ProvincePatch withId(String? value) {
    patchMap[Province$.id] = value;
    return this;
  }

  ProvincePatch withLanguageCode(LanguageCode? value) {
    patchMap[Province$.languageCode] = value;
    return this;
  }

  ProvincePatch withName(String? value) {
    patchMap[Province$.name_] = value;
    return this;
  }

  ProvincePatch withParent(Region? value) {
    patchMap[Province$.parent] = value;
    return this;
  }

  ProvincePatch withParentPatch(RegionPatch patch) {
    patchMap[Province$.parent] = patch;
    return this;
  }

  ProvincePatch withParentPatchFunc(RegionPatch Function(RegionPatch) patch) {
    patchMap[Province$.parent] = (dynamic current) {
      var currentPatch = RegionPatch();
      return patch(currentPatch).applyTo(current as Region);
    };
    return this;
  }

  ProvincePatch withParentId(String? value) {
    patchMap[Province$.parentId] = value;
    return this;
  }

  ProvincePatch withTranslations(List<RegionTranslation>? value) {
    patchMap[Province$.translations] = value;
    return this;
  }

  ProvincePatch updateTranslationsAt(
    int index,
    RegionTranslationPatch Function(RegionTranslationPatch) patch,
  ) {
    patchMap[Province$.translations] = (List<dynamic> list) {
      var updatedList = List<RegionTranslation>.from(list);
      if (index >= 0 && index < updatedList.length) {
        updatedList[index] = patch(RegionTranslationPatch())
            .applyTo(updatedList[index] as RegionTranslation);
      }
      return updatedList;
    };
    return this;
  }

  ProvincePatch withType(String? value) {
    patchMap[Province$.type] = value;
    return this;
  }

  ProvincePatch withUpdatedAt(DateTime? value) {
    patchMap[Province$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Province] query construction
abstract final class ProvinceFields {
  static const code = Field<Province, String>('code', _$code);

  static const createdAt = Field<Province, DateTime>('createdAt', _$createdAt);

  static const customFields = Field<Province, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const enabled = Field<Province, bool>('enabled', _$enabled);

  static const id = Field<Province, String>('id', _$id);

  static const languageCode = Field<Province, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<Province, String>('name', _$name);

  static const parent = Field<Province, Region?>('parent', _$parent);

  static const parentId = Field<Province, String?>('parentId', _$parentId);

  static const translations = Field<Province, List<RegionTranslation>>(
    'translations',
    _$translations,
  );

  static const type = Field<Province, String>('type', _$type);

  static const updatedAt = Field<Province, DateTime>('updatedAt', _$updatedAt);

  static String _$code(Province e) {
    return e.code;
  }

  static DateTime _$createdAt(Province e) {
    return e.createdAt;
  }

  static Map<String, dynamic>? _$customFields(Province e) {
    return e.customFields;
  }

  static bool _$enabled(Province e) {
    return e.enabled;
  }

  static String _$id(Province e) {
    return e.id;
  }

  static LanguageCode _$languageCode(Province e) {
    return e.languageCode;
  }

  static String _$name(Province e) {
    return e.name;
  }

  static Region? _$parent(Province e) {
    return e.parent;
  }

  static String? _$parentId(Province e) {
    return e.parentId;
  }

  static List<RegionTranslation> _$translations(Province e) {
    return e.translations;
  }

  static String _$type(Province e) {
    return e.type;
  }

  static DateTime _$updatedAt(Province e) {
    return e.updatedAt;
  }
}

extension ProvinceCompareE on Province {
  Map<String, dynamic> compareToProvince(Province other) {
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

    if (parent != other.parent) {
      diff['parent'] = () => other.parent;
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
