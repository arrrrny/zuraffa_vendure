// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'collection_translation.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class CollectionTranslation {
  CollectionTranslation({
    required DateTime this.createdAt,
    required String this.description,
    required String this.id,
    required LanguageCode this.languageCode,
    required String this.name,
    required String this.slug,
    required DateTime this.updatedAt,
  });

  factory CollectionTranslation.fromJson(Map<String, dynamic> json) =>
      _$CollectionTranslationFromJson(json);

  final DateTime createdAt;

  final String description;

  final String id;

  final LanguageCode languageCode;

  final String name;

  final String slug;

  final DateTime updatedAt;

  CollectionTranslation copyWith({
    DateTime? createdAt,
    String? description,
    String? id,
    LanguageCode? languageCode,
    String? name,
    String? slug,
    DateTime? updatedAt,
  }) {
    return CollectionTranslation(
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      id: id ?? this.id,
      languageCode: languageCode ?? this.languageCode,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  CollectionTranslation copyWithField<T>(
    Field<CollectionTranslation, T> field,
    T value,
  ) {
    switch (field.name) {
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'description':
        return copyWith(description: value as String);
      case 'id':
        return copyWith(id: value as String);
      case 'languageCode':
        return copyWith(languageCode: value as LanguageCode);
      case 'name':
        return copyWith(name: value as String);
      case 'slug':
        return copyWith(slug: value as String);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'CollectionTranslation has no settable field with this name',
        );
    }
  }

  CollectionTranslation copyWithCollectionTranslation({
    DateTime? createdAt,
    String? description,
    String? id,
    LanguageCode? languageCode,
    String? name,
    String? slug,
    DateTime? updatedAt,
  }) {
    return copyWith(
      createdAt: createdAt,
      description: description,
      id: id,
      languageCode: languageCode,
      name: name,
      slug: slug,
      updatedAt: updatedAt,
    );
  }

  CollectionTranslation patchWithCollectionTranslation([
    CollectionTranslationPatch? patchInput,
  ]) {
    final _patcher = patchInput ?? CollectionTranslationPatch();
    final _patchMap = _patcher.patchMap;
    return CollectionTranslation(
      createdAt: _patchMap.containsKey(CollectionTranslation$.createdAt)
          ? ((_patchMap[CollectionTranslation$.createdAt] is Function)
                    ? _patchMap[CollectionTranslation$.createdAt](
                        this.createdAt,
                      )
                    : (_patchMap[CollectionTranslation$.createdAt] is Patch)
                    ? _patchMap[CollectionTranslation$.createdAt].applyTo(
                        this.createdAt,
                      )
                    : _patchMap[CollectionTranslation$.createdAt])
                as DateTime
          : this.createdAt,
      description: _patchMap.containsKey(CollectionTranslation$.description)
          ? ((_patchMap[CollectionTranslation$.description] is Function)
                    ? _patchMap[CollectionTranslation$.description](
                        this.description,
                      )
                    : (_patchMap[CollectionTranslation$.description] is Patch)
                    ? _patchMap[CollectionTranslation$.description].applyTo(
                        this.description,
                      )
                    : _patchMap[CollectionTranslation$.description])
                as String
          : this.description,
      id: _patchMap.containsKey(CollectionTranslation$.id)
          ? ((_patchMap[CollectionTranslation$.id] is Function)
                    ? _patchMap[CollectionTranslation$.id](this.id)
                    : (_patchMap[CollectionTranslation$.id] is Patch)
                    ? _patchMap[CollectionTranslation$.id].applyTo(this.id)
                    : _patchMap[CollectionTranslation$.id])
                as String
          : this.id,
      languageCode: _patchMap.containsKey(CollectionTranslation$.languageCode)
          ? ((_patchMap[CollectionTranslation$.languageCode] is Function)
                    ? _patchMap[CollectionTranslation$.languageCode](
                        this.languageCode,
                      )
                    : (_patchMap[CollectionTranslation$.languageCode] is Patch)
                    ? _patchMap[CollectionTranslation$.languageCode].applyTo(
                        this.languageCode,
                      )
                    : _patchMap[CollectionTranslation$.languageCode])
                as LanguageCode
          : this.languageCode,
      name: _patchMap.containsKey(CollectionTranslation$.name_)
          ? ((_patchMap[CollectionTranslation$.name_] is Function)
                    ? _patchMap[CollectionTranslation$.name_](this.name)
                    : (_patchMap[CollectionTranslation$.name_] is Patch)
                    ? _patchMap[CollectionTranslation$.name_].applyTo(this.name)
                    : _patchMap[CollectionTranslation$.name_])
                as String
          : this.name,
      slug: _patchMap.containsKey(CollectionTranslation$.slug)
          ? ((_patchMap[CollectionTranslation$.slug] is Function)
                    ? _patchMap[CollectionTranslation$.slug](this.slug)
                    : (_patchMap[CollectionTranslation$.slug] is Patch)
                    ? _patchMap[CollectionTranslation$.slug].applyTo(this.slug)
                    : _patchMap[CollectionTranslation$.slug])
                as String
          : this.slug,
      updatedAt: _patchMap.containsKey(CollectionTranslation$.updatedAt)
          ? ((_patchMap[CollectionTranslation$.updatedAt] is Function)
                    ? _patchMap[CollectionTranslation$.updatedAt](
                        this.updatedAt,
                      )
                    : (_patchMap[CollectionTranslation$.updatedAt] is Patch)
                    ? _patchMap[CollectionTranslation$.updatedAt].applyTo(
                        this.updatedAt,
                      )
                    : _patchMap[CollectionTranslation$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CollectionTranslation &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        languageCode == other.languageCode &&
        name == other.name &&
        slug == other.slug &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.createdAt,
      this.description,
      this.id,
      this.languageCode,
      this.name,
      this.slug,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'CollectionTranslation(' +
        'createdAt: ${createdAt}' +
        ', ' +
        'description: ${description}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'languageCode: ${languageCode}' +
        ', ' +
        'name: ${name}' +
        ', ' +
        'slug: ${slug}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$CollectionTranslationToJson(this);
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

extension CollectionTranslationPropertyHelpers on CollectionTranslation {
  bool get hasDescription {
    return this.description.isNotEmpty;
  }

  bool get noDescription {
    return this.description.isEmpty;
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

  bool get hasSlug {
    return this.slug.isNotEmpty;
  }

  bool get noSlug {
    return this.slug.isEmpty;
  }
}

extension CollectionTranslationSerialization on CollectionTranslation {
  Map<String, dynamic> toJson() {
    return _$CollectionTranslationToJson(this);
  }
}

enum CollectionTranslation$ {
  createdAt,
  description,
  id,
  languageCode,
  name_,
  slug,
  updatedAt,
}

class CollectionTranslationPatch
    extends PatchBase<CollectionTranslation, CollectionTranslation$> {
  CollectionTranslation applyTo(CollectionTranslation entity) {
    return entity.patchWithCollectionTranslation(this);
  }

  CollectionTranslationPatch withCreatedAt(DateTime? value) {
    patchMap[CollectionTranslation$.createdAt] = value;
    return this;
  }

  CollectionTranslationPatch withDescription(String? value) {
    patchMap[CollectionTranslation$.description] = value;
    return this;
  }

  CollectionTranslationPatch withId(String? value) {
    patchMap[CollectionTranslation$.id] = value;
    return this;
  }

  CollectionTranslationPatch withLanguageCode(LanguageCode? value) {
    patchMap[CollectionTranslation$.languageCode] = value;
    return this;
  }

  CollectionTranslationPatch withName(String? value) {
    patchMap[CollectionTranslation$.name_] = value;
    return this;
  }

  CollectionTranslationPatch withSlug(String? value) {
    patchMap[CollectionTranslation$.slug] = value;
    return this;
  }

  CollectionTranslationPatch withUpdatedAt(DateTime? value) {
    patchMap[CollectionTranslation$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [CollectionTranslation] query construction
abstract final class CollectionTranslationFields {
  static const createdAt = Field<CollectionTranslation, DateTime>(
    'createdAt',
    _$createdAt,
  );

  static const description = Field<CollectionTranslation, String>(
    'description',
    _$description,
  );

  static const id = Field<CollectionTranslation, String>('id', _$id);

  static const languageCode = Field<CollectionTranslation, LanguageCode>(
    'languageCode',
    _$languageCode,
  );

  static const name = Field<CollectionTranslation, String>('name', _$name);

  static const slug = Field<CollectionTranslation, String>('slug', _$slug);

  static const updatedAt = Field<CollectionTranslation, DateTime>(
    'updatedAt',
    _$updatedAt,
  );

  static DateTime _$createdAt(CollectionTranslation e) {
    return e.createdAt;
  }

  static String _$description(CollectionTranslation e) {
    return e.description;
  }

  static String _$id(CollectionTranslation e) {
    return e.id;
  }

  static LanguageCode _$languageCode(CollectionTranslation e) {
    return e.languageCode;
  }

  static String _$name(CollectionTranslation e) {
    return e.name;
  }

  static String _$slug(CollectionTranslation e) {
    return e.slug;
  }

  static DateTime _$updatedAt(CollectionTranslation e) {
    return e.updatedAt;
  }
}

extension CollectionTranslationCompareE on CollectionTranslation {
  Map<String, dynamic> compareToCollectionTranslation(
    CollectionTranslation other,
  ) {
    final Map<String, dynamic> diff = {};

    if (createdAt != other.createdAt) {
      diff['createdAt'] = () => other.createdAt;
    }

    if (description != other.description) {
      diff['description'] = () => other.description;
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

    if (slug != other.slug) {
      diff['slug'] = () => other.slug;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
