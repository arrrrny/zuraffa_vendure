// dart format width=80
// ignore_for_file: UNNECESSARY_CAST
// ignore_for_file: type=lint

part of 'channel.dart';

// **************************************************************************
// ZorphyGenerator
// **************************************************************************

@JsonSerializable(explicitToJson: true, checked: true)
class Channel {
  Channel({
    required List<CurrencyCode> this.availableCurrencyCodes,
    List<LanguageCode>? this.availableLanguageCodes,
    required String this.code,
    required DateTime this.createdAt,
    required CurrencyCode this.currencyCode,
    Map<String, dynamic>? this.customFields,
    required CurrencyCode this.defaultCurrencyCode,
    required LanguageCode this.defaultLanguageCode,
    Zone? this.defaultShippingZone,
    Zone? this.defaultTaxZone,
    required String this.id,
    int? this.outOfStockThreshold,
    required bool this.pricesIncludeTax,
    Seller? this.seller,
    required String this.token,
    bool? this.trackInventory,
    required DateTime this.updatedAt,
  });

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  final List<CurrencyCode> availableCurrencyCodes;

  final List<LanguageCode>? availableLanguageCodes;

  final String code;

  final DateTime createdAt;

  final CurrencyCode currencyCode;

  final Map<String, dynamic>? customFields;

  final CurrencyCode defaultCurrencyCode;

  final LanguageCode defaultLanguageCode;

  final Zone? defaultShippingZone;

  final Zone? defaultTaxZone;

  final String id;

  final int? outOfStockThreshold;

  final bool pricesIncludeTax;

  final Seller? seller;

  final String token;

  final bool? trackInventory;

  final DateTime updatedAt;

  Channel copyWith({
    List<CurrencyCode>? availableCurrencyCodes,
    List<LanguageCode>? availableLanguageCodes,
    String? code,
    DateTime? createdAt,
    CurrencyCode? currencyCode,
    Map<String, dynamic>? customFields,
    CurrencyCode? defaultCurrencyCode,
    LanguageCode? defaultLanguageCode,
    Zone? defaultShippingZone,
    Zone? defaultTaxZone,
    String? id,
    int? outOfStockThreshold,
    bool? pricesIncludeTax,
    Seller? seller,
    String? token,
    bool? trackInventory,
    DateTime? updatedAt,
  }) {
    return Channel(
      availableCurrencyCodes:
          availableCurrencyCodes ?? this.availableCurrencyCodes,
      availableLanguageCodes:
          availableLanguageCodes ?? this.availableLanguageCodes,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      currencyCode: currencyCode ?? this.currencyCode,
      customFields: customFields ?? this.customFields,
      defaultCurrencyCode: defaultCurrencyCode ?? this.defaultCurrencyCode,
      defaultLanguageCode: defaultLanguageCode ?? this.defaultLanguageCode,
      defaultShippingZone: defaultShippingZone ?? this.defaultShippingZone,
      defaultTaxZone: defaultTaxZone ?? this.defaultTaxZone,
      id: id ?? this.id,
      outOfStockThreshold: outOfStockThreshold ?? this.outOfStockThreshold,
      pricesIncludeTax: pricesIncludeTax ?? this.pricesIncludeTax,
      seller: seller ?? this.seller,
      token: token ?? this.token,
      trackInventory: trackInventory ?? this.trackInventory,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Returns a copy of this entity with [field] set to [value].
  ///
  /// Delegates to [copyWith]: the receiver is never mutated and a
  /// null [value] keeps the current field value.
  Channel copyWithField<T>(Field<Channel, T> field, T value) {
    switch (field.name) {
      case 'availableCurrencyCodes':
        return copyWith(availableCurrencyCodes: value as List<CurrencyCode>);
      case 'availableLanguageCodes':
        return copyWith(availableLanguageCodes: value as List<LanguageCode>?);
      case 'code':
        return copyWith(code: value as String);
      case 'createdAt':
        return copyWith(createdAt: value as DateTime);
      case 'currencyCode':
        return copyWith(currencyCode: value as CurrencyCode);
      case 'customFields':
        return copyWith(customFields: value as Map<String, dynamic>?);
      case 'defaultCurrencyCode':
        return copyWith(defaultCurrencyCode: value as CurrencyCode);
      case 'defaultLanguageCode':
        return copyWith(defaultLanguageCode: value as LanguageCode);
      case 'defaultShippingZone':
        return copyWith(defaultShippingZone: value as Zone?);
      case 'defaultTaxZone':
        return copyWith(defaultTaxZone: value as Zone?);
      case 'id':
        return copyWith(id: value as String);
      case 'outOfStockThreshold':
        return copyWith(outOfStockThreshold: value as int?);
      case 'pricesIncludeTax':
        return copyWith(pricesIncludeTax: value as bool);
      case 'seller':
        return copyWith(seller: value as Seller?);
      case 'token':
        return copyWith(token: value as String);
      case 'trackInventory':
        return copyWith(trackInventory: value as bool?);
      case 'updatedAt':
        return copyWith(updatedAt: value as DateTime);
      default:
        throw ArgumentError.value(
          field.name,
          'field',
          'Channel has no settable field with this name',
        );
    }
  }

  Channel copyWithChannel({
    List<CurrencyCode>? availableCurrencyCodes,
    List<LanguageCode>? availableLanguageCodes,
    String? code,
    DateTime? createdAt,
    CurrencyCode? currencyCode,
    Map<String, dynamic>? customFields,
    CurrencyCode? defaultCurrencyCode,
    LanguageCode? defaultLanguageCode,
    Zone? defaultShippingZone,
    Zone? defaultTaxZone,
    String? id,
    int? outOfStockThreshold,
    bool? pricesIncludeTax,
    Seller? seller,
    String? token,
    bool? trackInventory,
    DateTime? updatedAt,
  }) {
    return copyWith(
      availableCurrencyCodes: availableCurrencyCodes,
      availableLanguageCodes: availableLanguageCodes,
      code: code,
      createdAt: createdAt,
      currencyCode: currencyCode,
      customFields: customFields,
      defaultCurrencyCode: defaultCurrencyCode,
      defaultLanguageCode: defaultLanguageCode,
      defaultShippingZone: defaultShippingZone,
      defaultTaxZone: defaultTaxZone,
      id: id,
      outOfStockThreshold: outOfStockThreshold,
      pricesIncludeTax: pricesIncludeTax,
      seller: seller,
      token: token,
      trackInventory: trackInventory,
      updatedAt: updatedAt,
    );
  }

  Channel patchWithChannel([ChannelPatch? patchInput]) {
    final _patcher = patchInput ?? ChannelPatch();
    final _patchMap = _patcher.patchMap;
    return Channel(
      availableCurrencyCodes:
          _patchMap.containsKey(Channel$.availableCurrencyCodes)
          ? ((_patchMap[Channel$.availableCurrencyCodes] is Function)
                    ? _patchMap[Channel$.availableCurrencyCodes](
                        this.availableCurrencyCodes,
                      )
                    : (_patchMap[Channel$.availableCurrencyCodes] is Patch)
                    ? _patchMap[Channel$.availableCurrencyCodes].applyTo(
                        this.availableCurrencyCodes,
                      )
                    : _patchMap[Channel$.availableCurrencyCodes])
                as List<CurrencyCode>
          : this.availableCurrencyCodes,
      availableLanguageCodes:
          _patchMap.containsKey(Channel$.availableLanguageCodes)
          ? ((_patchMap[Channel$.availableLanguageCodes] is Function)
                    ? _patchMap[Channel$.availableLanguageCodes](
                        this.availableLanguageCodes,
                      )
                    : (_patchMap[Channel$.availableLanguageCodes] is Patch)
                    ? _patchMap[Channel$.availableLanguageCodes].applyTo(
                        this.availableLanguageCodes,
                      )
                    : _patchMap[Channel$.availableLanguageCodes])
                as List<LanguageCode>?
          : this.availableLanguageCodes,
      code: _patchMap.containsKey(Channel$.code)
          ? ((_patchMap[Channel$.code] is Function)
                    ? _patchMap[Channel$.code](this.code)
                    : (_patchMap[Channel$.code] is Patch)
                    ? _patchMap[Channel$.code].applyTo(this.code)
                    : _patchMap[Channel$.code])
                as String
          : this.code,
      createdAt: _patchMap.containsKey(Channel$.createdAt)
          ? ((_patchMap[Channel$.createdAt] is Function)
                    ? _patchMap[Channel$.createdAt](this.createdAt)
                    : (_patchMap[Channel$.createdAt] is Patch)
                    ? _patchMap[Channel$.createdAt].applyTo(this.createdAt)
                    : _patchMap[Channel$.createdAt])
                as DateTime
          : this.createdAt,
      currencyCode: _patchMap.containsKey(Channel$.currencyCode)
          ? ((_patchMap[Channel$.currencyCode] is Function)
                    ? _patchMap[Channel$.currencyCode](this.currencyCode)
                    : (_patchMap[Channel$.currencyCode] is Patch)
                    ? _patchMap[Channel$.currencyCode].applyTo(
                        this.currencyCode,
                      )
                    : _patchMap[Channel$.currencyCode])
                as CurrencyCode
          : this.currencyCode,
      customFields: _patchMap.containsKey(Channel$.customFields)
          ? ((_patchMap[Channel$.customFields] is Function)
                    ? _patchMap[Channel$.customFields](this.customFields)
                    : (_patchMap[Channel$.customFields] is Patch)
                    ? _patchMap[Channel$.customFields].applyTo(
                        this.customFields,
                      )
                    : _patchMap[Channel$.customFields])
                as Map<String, dynamic>?
          : this.customFields,
      defaultCurrencyCode: _patchMap.containsKey(Channel$.defaultCurrencyCode)
          ? ((_patchMap[Channel$.defaultCurrencyCode] is Function)
                    ? _patchMap[Channel$.defaultCurrencyCode](
                        this.defaultCurrencyCode,
                      )
                    : (_patchMap[Channel$.defaultCurrencyCode] is Patch)
                    ? _patchMap[Channel$.defaultCurrencyCode].applyTo(
                        this.defaultCurrencyCode,
                      )
                    : _patchMap[Channel$.defaultCurrencyCode])
                as CurrencyCode
          : this.defaultCurrencyCode,
      defaultLanguageCode: _patchMap.containsKey(Channel$.defaultLanguageCode)
          ? ((_patchMap[Channel$.defaultLanguageCode] is Function)
                    ? _patchMap[Channel$.defaultLanguageCode](
                        this.defaultLanguageCode,
                      )
                    : (_patchMap[Channel$.defaultLanguageCode] is Patch)
                    ? _patchMap[Channel$.defaultLanguageCode].applyTo(
                        this.defaultLanguageCode,
                      )
                    : _patchMap[Channel$.defaultLanguageCode])
                as LanguageCode
          : this.defaultLanguageCode,
      defaultShippingZone: _patchMap.containsKey(Channel$.defaultShippingZone)
          ? ((_patchMap[Channel$.defaultShippingZone] is Function)
                    ? _patchMap[Channel$.defaultShippingZone](
                        this.defaultShippingZone,
                      )
                    : (_patchMap[Channel$.defaultShippingZone] is Patch)
                    ? _patchMap[Channel$.defaultShippingZone].applyTo(
                        this.defaultShippingZone,
                      )
                    : _patchMap[Channel$.defaultShippingZone])
                as Zone?
          : this.defaultShippingZone,
      defaultTaxZone: _patchMap.containsKey(Channel$.defaultTaxZone)
          ? ((_patchMap[Channel$.defaultTaxZone] is Function)
                    ? _patchMap[Channel$.defaultTaxZone](this.defaultTaxZone)
                    : (_patchMap[Channel$.defaultTaxZone] is Patch)
                    ? _patchMap[Channel$.defaultTaxZone].applyTo(
                        this.defaultTaxZone,
                      )
                    : _patchMap[Channel$.defaultTaxZone])
                as Zone?
          : this.defaultTaxZone,
      id: _patchMap.containsKey(Channel$.id)
          ? ((_patchMap[Channel$.id] is Function)
                    ? _patchMap[Channel$.id](this.id)
                    : (_patchMap[Channel$.id] is Patch)
                    ? _patchMap[Channel$.id].applyTo(this.id)
                    : _patchMap[Channel$.id])
                as String
          : this.id,
      outOfStockThreshold: _patchMap.containsKey(Channel$.outOfStockThreshold)
          ? ((_patchMap[Channel$.outOfStockThreshold] is Function)
                    ? _patchMap[Channel$.outOfStockThreshold](
                        this.outOfStockThreshold,
                      )
                    : (_patchMap[Channel$.outOfStockThreshold] is Patch)
                    ? _patchMap[Channel$.outOfStockThreshold].applyTo(
                        this.outOfStockThreshold,
                      )
                    : _patchMap[Channel$.outOfStockThreshold])
                as int?
          : this.outOfStockThreshold,
      pricesIncludeTax: _patchMap.containsKey(Channel$.pricesIncludeTax)
          ? ((_patchMap[Channel$.pricesIncludeTax] is Function)
                    ? _patchMap[Channel$.pricesIncludeTax](
                        this.pricesIncludeTax,
                      )
                    : (_patchMap[Channel$.pricesIncludeTax] is Patch)
                    ? _patchMap[Channel$.pricesIncludeTax].applyTo(
                        this.pricesIncludeTax,
                      )
                    : _patchMap[Channel$.pricesIncludeTax])
                as bool
          : this.pricesIncludeTax,
      seller: _patchMap.containsKey(Channel$.seller)
          ? ((_patchMap[Channel$.seller] is Function)
                    ? _patchMap[Channel$.seller](this.seller)
                    : (_patchMap[Channel$.seller] is Patch)
                    ? _patchMap[Channel$.seller].applyTo(this.seller)
                    : _patchMap[Channel$.seller])
                as Seller?
          : this.seller,
      token: _patchMap.containsKey(Channel$.token)
          ? ((_patchMap[Channel$.token] is Function)
                    ? _patchMap[Channel$.token](this.token)
                    : (_patchMap[Channel$.token] is Patch)
                    ? _patchMap[Channel$.token].applyTo(this.token)
                    : _patchMap[Channel$.token])
                as String
          : this.token,
      trackInventory: _patchMap.containsKey(Channel$.trackInventory)
          ? ((_patchMap[Channel$.trackInventory] is Function)
                    ? _patchMap[Channel$.trackInventory](this.trackInventory)
                    : (_patchMap[Channel$.trackInventory] is Patch)
                    ? _patchMap[Channel$.trackInventory].applyTo(
                        this.trackInventory,
                      )
                    : _patchMap[Channel$.trackInventory])
                as bool?
          : this.trackInventory,
      updatedAt: _patchMap.containsKey(Channel$.updatedAt)
          ? ((_patchMap[Channel$.updatedAt] is Function)
                    ? _patchMap[Channel$.updatedAt](this.updatedAt)
                    : (_patchMap[Channel$.updatedAt] is Patch)
                    ? _patchMap[Channel$.updatedAt].applyTo(this.updatedAt)
                    : _patchMap[Channel$.updatedAt])
                as DateTime
          : this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Channel &&
        availableCurrencyCodes == other.availableCurrencyCodes &&
        availableLanguageCodes == other.availableLanguageCodes &&
        code == other.code &&
        createdAt == other.createdAt &&
        currencyCode == other.currencyCode &&
        customFields == other.customFields &&
        defaultCurrencyCode == other.defaultCurrencyCode &&
        defaultLanguageCode == other.defaultLanguageCode &&
        defaultShippingZone == other.defaultShippingZone &&
        defaultTaxZone == other.defaultTaxZone &&
        id == other.id &&
        outOfStockThreshold == other.outOfStockThreshold &&
        pricesIncludeTax == other.pricesIncludeTax &&
        seller == other.seller &&
        token == other.token &&
        trackInventory == other.trackInventory &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      this.availableCurrencyCodes,
      this.availableLanguageCodes,
      this.code,
      this.createdAt,
      this.currencyCode,
      this.customFields,
      this.defaultCurrencyCode,
      this.defaultLanguageCode,
      this.defaultShippingZone,
      this.defaultTaxZone,
      this.id,
      this.outOfStockThreshold,
      this.pricesIncludeTax,
      this.seller,
      this.token,
      this.trackInventory,
      this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'Channel(' +
        'availableCurrencyCodes: ${availableCurrencyCodes}' +
        ', ' +
        'availableLanguageCodes: ${availableLanguageCodes}' +
        ', ' +
        'code: ${code}' +
        ', ' +
        'createdAt: ${createdAt}' +
        ', ' +
        'currencyCode: ${currencyCode}' +
        ', ' +
        'customFields: ${customFields}' +
        ', ' +
        'defaultCurrencyCode: ${defaultCurrencyCode}' +
        ', ' +
        'defaultLanguageCode: ${defaultLanguageCode}' +
        ', ' +
        'defaultShippingZone: ${defaultShippingZone}' +
        ', ' +
        'defaultTaxZone: ${defaultTaxZone}' +
        ', ' +
        'id: ${id}' +
        ', ' +
        'outOfStockThreshold: ${outOfStockThreshold}' +
        ', ' +
        'pricesIncludeTax: ${pricesIncludeTax}' +
        ', ' +
        'seller: ${seller}' +
        ', ' +
        'token: ${token}' +
        ', ' +
        'trackInventory: ${trackInventory}' +
        ', ' +
        'updatedAt: ${updatedAt})';
  }

  Map<String, dynamic> toJsonLean() {
    final Map<String, dynamic> data = _$ChannelToJson(this);
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

extension ChannelPropertyHelpers on Channel {
  bool get hasAvailableCurrencyCodes {
    return this.availableCurrencyCodes.isNotEmpty;
  }

  bool get noAvailableCurrencyCodes {
    return this.availableCurrencyCodes.isEmpty;
  }

  List<LanguageCode> get availableLanguageCodesRequired {
    return this.availableLanguageCodes ??
        (throw StateError('availableLanguageCodes is required but was null'));
  }

  bool get hasAvailableLanguageCodes {
    return this.availableLanguageCodes?.isNotEmpty ?? false;
  }

  bool get noAvailableLanguageCodes {
    return this.availableLanguageCodes?.isEmpty ?? true;
  }

  bool get hasCode {
    return this.code.isNotEmpty;
  }

  bool get noCode {
    return this.code.isEmpty;
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

  bool get isDefaultCurrencyCodeAed {
    return this.defaultCurrencyCode == CurrencyCode.aed;
  }

  bool get isDefaultCurrencyCodeAfn {
    return this.defaultCurrencyCode == CurrencyCode.afn;
  }

  bool get isDefaultCurrencyCodeAll {
    return this.defaultCurrencyCode == CurrencyCode.all;
  }

  bool get isDefaultCurrencyCodeAmd {
    return this.defaultCurrencyCode == CurrencyCode.amd;
  }

  bool get isDefaultCurrencyCodeAng {
    return this.defaultCurrencyCode == CurrencyCode.ang;
  }

  bool get isDefaultCurrencyCodeAoa {
    return this.defaultCurrencyCode == CurrencyCode.aoa;
  }

  bool get isDefaultCurrencyCodeArs {
    return this.defaultCurrencyCode == CurrencyCode.ars;
  }

  bool get isDefaultCurrencyCodeAud {
    return this.defaultCurrencyCode == CurrencyCode.aud;
  }

  bool get isDefaultCurrencyCodeAwg {
    return this.defaultCurrencyCode == CurrencyCode.awg;
  }

  bool get isDefaultCurrencyCodeAzn {
    return this.defaultCurrencyCode == CurrencyCode.azn;
  }

  bool get isDefaultCurrencyCodeBam {
    return this.defaultCurrencyCode == CurrencyCode.bam;
  }

  bool get isDefaultCurrencyCodeBbd {
    return this.defaultCurrencyCode == CurrencyCode.bbd;
  }

  bool get isDefaultCurrencyCodeBdt {
    return this.defaultCurrencyCode == CurrencyCode.bdt;
  }

  bool get isDefaultCurrencyCodeBgn {
    return this.defaultCurrencyCode == CurrencyCode.bgn;
  }

  bool get isDefaultCurrencyCodeBhd {
    return this.defaultCurrencyCode == CurrencyCode.bhd;
  }

  bool get isDefaultCurrencyCodeBif {
    return this.defaultCurrencyCode == CurrencyCode.bif;
  }

  bool get isDefaultCurrencyCodeBmd {
    return this.defaultCurrencyCode == CurrencyCode.bmd;
  }

  bool get isDefaultCurrencyCodeBnd {
    return this.defaultCurrencyCode == CurrencyCode.bnd;
  }

  bool get isDefaultCurrencyCodeBob {
    return this.defaultCurrencyCode == CurrencyCode.bob;
  }

  bool get isDefaultCurrencyCodeBrl {
    return this.defaultCurrencyCode == CurrencyCode.brl;
  }

  bool get isDefaultCurrencyCodeBsd {
    return this.defaultCurrencyCode == CurrencyCode.bsd;
  }

  bool get isDefaultCurrencyCodeBtn {
    return this.defaultCurrencyCode == CurrencyCode.btn;
  }

  bool get isDefaultCurrencyCodeBwp {
    return this.defaultCurrencyCode == CurrencyCode.bwp;
  }

  bool get isDefaultCurrencyCodeByn {
    return this.defaultCurrencyCode == CurrencyCode.byn;
  }

  bool get isDefaultCurrencyCodeBzd {
    return this.defaultCurrencyCode == CurrencyCode.bzd;
  }

  bool get isDefaultCurrencyCodeCad {
    return this.defaultCurrencyCode == CurrencyCode.cad;
  }

  bool get isDefaultCurrencyCodeCdf {
    return this.defaultCurrencyCode == CurrencyCode.cdf;
  }

  bool get isDefaultCurrencyCodeChf {
    return this.defaultCurrencyCode == CurrencyCode.chf;
  }

  bool get isDefaultCurrencyCodeClp {
    return this.defaultCurrencyCode == CurrencyCode.clp;
  }

  bool get isDefaultCurrencyCodeCny {
    return this.defaultCurrencyCode == CurrencyCode.cny;
  }

  bool get isDefaultCurrencyCodeCop {
    return this.defaultCurrencyCode == CurrencyCode.cop;
  }

  bool get isDefaultCurrencyCodeCrc {
    return this.defaultCurrencyCode == CurrencyCode.crc;
  }

  bool get isDefaultCurrencyCodeCuc {
    return this.defaultCurrencyCode == CurrencyCode.cuc;
  }

  bool get isDefaultCurrencyCodeCup {
    return this.defaultCurrencyCode == CurrencyCode.cup;
  }

  bool get isDefaultCurrencyCodeCve {
    return this.defaultCurrencyCode == CurrencyCode.cve;
  }

  bool get isDefaultCurrencyCodeCzk {
    return this.defaultCurrencyCode == CurrencyCode.czk;
  }

  bool get isDefaultCurrencyCodeDjf {
    return this.defaultCurrencyCode == CurrencyCode.djf;
  }

  bool get isDefaultCurrencyCodeDkk {
    return this.defaultCurrencyCode == CurrencyCode.dkk;
  }

  bool get isDefaultCurrencyCodeDop {
    return this.defaultCurrencyCode == CurrencyCode.dop;
  }

  bool get isDefaultCurrencyCodeDzd {
    return this.defaultCurrencyCode == CurrencyCode.dzd;
  }

  bool get isDefaultCurrencyCodeEgp {
    return this.defaultCurrencyCode == CurrencyCode.egp;
  }

  bool get isDefaultCurrencyCodeErn {
    return this.defaultCurrencyCode == CurrencyCode.ern;
  }

  bool get isDefaultCurrencyCodeEtb {
    return this.defaultCurrencyCode == CurrencyCode.etb;
  }

  bool get isDefaultCurrencyCodeEur {
    return this.defaultCurrencyCode == CurrencyCode.eur;
  }

  bool get isDefaultCurrencyCodeFjd {
    return this.defaultCurrencyCode == CurrencyCode.fjd;
  }

  bool get isDefaultCurrencyCodeFkp {
    return this.defaultCurrencyCode == CurrencyCode.fkp;
  }

  bool get isDefaultCurrencyCodeGbp {
    return this.defaultCurrencyCode == CurrencyCode.gbp;
  }

  bool get isDefaultCurrencyCodeGel {
    return this.defaultCurrencyCode == CurrencyCode.gel;
  }

  bool get isDefaultCurrencyCodeGhs {
    return this.defaultCurrencyCode == CurrencyCode.ghs;
  }

  bool get isDefaultCurrencyCodeGip {
    return this.defaultCurrencyCode == CurrencyCode.gip;
  }

  bool get isDefaultCurrencyCodeGmd {
    return this.defaultCurrencyCode == CurrencyCode.gmd;
  }

  bool get isDefaultCurrencyCodeGnf {
    return this.defaultCurrencyCode == CurrencyCode.gnf;
  }

  bool get isDefaultCurrencyCodeGtq {
    return this.defaultCurrencyCode == CurrencyCode.gtq;
  }

  bool get isDefaultCurrencyCodeGyd {
    return this.defaultCurrencyCode == CurrencyCode.gyd;
  }

  bool get isDefaultCurrencyCodeHkd {
    return this.defaultCurrencyCode == CurrencyCode.hkd;
  }

  bool get isDefaultCurrencyCodeHnl {
    return this.defaultCurrencyCode == CurrencyCode.hnl;
  }

  bool get isDefaultCurrencyCodeHrk {
    return this.defaultCurrencyCode == CurrencyCode.hrk;
  }

  bool get isDefaultCurrencyCodeHtg {
    return this.defaultCurrencyCode == CurrencyCode.htg;
  }

  bool get isDefaultCurrencyCodeHuf {
    return this.defaultCurrencyCode == CurrencyCode.huf;
  }

  bool get isDefaultCurrencyCodeIdr {
    return this.defaultCurrencyCode == CurrencyCode.idr;
  }

  bool get isDefaultCurrencyCodeIls {
    return this.defaultCurrencyCode == CurrencyCode.ils;
  }

  bool get isDefaultCurrencyCodeInr {
    return this.defaultCurrencyCode == CurrencyCode.inr;
  }

  bool get isDefaultCurrencyCodeIqd {
    return this.defaultCurrencyCode == CurrencyCode.iqd;
  }

  bool get isDefaultCurrencyCodeIrr {
    return this.defaultCurrencyCode == CurrencyCode.irr;
  }

  bool get isDefaultCurrencyCodeIsk {
    return this.defaultCurrencyCode == CurrencyCode.isk;
  }

  bool get isDefaultCurrencyCodeJmd {
    return this.defaultCurrencyCode == CurrencyCode.jmd;
  }

  bool get isDefaultCurrencyCodeJod {
    return this.defaultCurrencyCode == CurrencyCode.jod;
  }

  bool get isDefaultCurrencyCodeJpy {
    return this.defaultCurrencyCode == CurrencyCode.jpy;
  }

  bool get isDefaultCurrencyCodeKes {
    return this.defaultCurrencyCode == CurrencyCode.kes;
  }

  bool get isDefaultCurrencyCodeKgs {
    return this.defaultCurrencyCode == CurrencyCode.kgs;
  }

  bool get isDefaultCurrencyCodeKhr {
    return this.defaultCurrencyCode == CurrencyCode.khr;
  }

  bool get isDefaultCurrencyCodeKmf {
    return this.defaultCurrencyCode == CurrencyCode.kmf;
  }

  bool get isDefaultCurrencyCodeKpw {
    return this.defaultCurrencyCode == CurrencyCode.kpw;
  }

  bool get isDefaultCurrencyCodeKrw {
    return this.defaultCurrencyCode == CurrencyCode.krw;
  }

  bool get isDefaultCurrencyCodeKwd {
    return this.defaultCurrencyCode == CurrencyCode.kwd;
  }

  bool get isDefaultCurrencyCodeKyd {
    return this.defaultCurrencyCode == CurrencyCode.kyd;
  }

  bool get isDefaultCurrencyCodeKzt {
    return this.defaultCurrencyCode == CurrencyCode.kzt;
  }

  bool get isDefaultCurrencyCodeLak {
    return this.defaultCurrencyCode == CurrencyCode.lak;
  }

  bool get isDefaultCurrencyCodeLbp {
    return this.defaultCurrencyCode == CurrencyCode.lbp;
  }

  bool get isDefaultCurrencyCodeLkr {
    return this.defaultCurrencyCode == CurrencyCode.lkr;
  }

  bool get isDefaultCurrencyCodeLrd {
    return this.defaultCurrencyCode == CurrencyCode.lrd;
  }

  bool get isDefaultCurrencyCodeLsl {
    return this.defaultCurrencyCode == CurrencyCode.lsl;
  }

  bool get isDefaultCurrencyCodeLyd {
    return this.defaultCurrencyCode == CurrencyCode.lyd;
  }

  bool get isDefaultCurrencyCodeMad {
    return this.defaultCurrencyCode == CurrencyCode.mad;
  }

  bool get isDefaultCurrencyCodeMdl {
    return this.defaultCurrencyCode == CurrencyCode.mdl;
  }

  bool get isDefaultCurrencyCodeMga {
    return this.defaultCurrencyCode == CurrencyCode.mga;
  }

  bool get isDefaultCurrencyCodeMkd {
    return this.defaultCurrencyCode == CurrencyCode.mkd;
  }

  bool get isDefaultCurrencyCodeMmk {
    return this.defaultCurrencyCode == CurrencyCode.mmk;
  }

  bool get isDefaultCurrencyCodeMnt {
    return this.defaultCurrencyCode == CurrencyCode.mnt;
  }

  bool get isDefaultCurrencyCodeMop {
    return this.defaultCurrencyCode == CurrencyCode.mop;
  }

  bool get isDefaultCurrencyCodeMru {
    return this.defaultCurrencyCode == CurrencyCode.mru;
  }

  bool get isDefaultCurrencyCodeMur {
    return this.defaultCurrencyCode == CurrencyCode.mur;
  }

  bool get isDefaultCurrencyCodeMvr {
    return this.defaultCurrencyCode == CurrencyCode.mvr;
  }

  bool get isDefaultCurrencyCodeMwk {
    return this.defaultCurrencyCode == CurrencyCode.mwk;
  }

  bool get isDefaultCurrencyCodeMxn {
    return this.defaultCurrencyCode == CurrencyCode.mxn;
  }

  bool get isDefaultCurrencyCodeMyr {
    return this.defaultCurrencyCode == CurrencyCode.myr;
  }

  bool get isDefaultCurrencyCodeMzn {
    return this.defaultCurrencyCode == CurrencyCode.mzn;
  }

  bool get isDefaultCurrencyCodeNad {
    return this.defaultCurrencyCode == CurrencyCode.nad;
  }

  bool get isDefaultCurrencyCodeNgn {
    return this.defaultCurrencyCode == CurrencyCode.ngn;
  }

  bool get isDefaultCurrencyCodeNio {
    return this.defaultCurrencyCode == CurrencyCode.nio;
  }

  bool get isDefaultCurrencyCodeNok {
    return this.defaultCurrencyCode == CurrencyCode.nok;
  }

  bool get isDefaultCurrencyCodeNpr {
    return this.defaultCurrencyCode == CurrencyCode.npr;
  }

  bool get isDefaultCurrencyCodeNzd {
    return this.defaultCurrencyCode == CurrencyCode.nzd;
  }

  bool get isDefaultCurrencyCodeOmr {
    return this.defaultCurrencyCode == CurrencyCode.omr;
  }

  bool get isDefaultCurrencyCodePab {
    return this.defaultCurrencyCode == CurrencyCode.pab;
  }

  bool get isDefaultCurrencyCodePen {
    return this.defaultCurrencyCode == CurrencyCode.pen;
  }

  bool get isDefaultCurrencyCodePgk {
    return this.defaultCurrencyCode == CurrencyCode.pgk;
  }

  bool get isDefaultCurrencyCodePhp {
    return this.defaultCurrencyCode == CurrencyCode.php;
  }

  bool get isDefaultCurrencyCodePkr {
    return this.defaultCurrencyCode == CurrencyCode.pkr;
  }

  bool get isDefaultCurrencyCodePln {
    return this.defaultCurrencyCode == CurrencyCode.pln;
  }

  bool get isDefaultCurrencyCodePyg {
    return this.defaultCurrencyCode == CurrencyCode.pyg;
  }

  bool get isDefaultCurrencyCodeQar {
    return this.defaultCurrencyCode == CurrencyCode.qar;
  }

  bool get isDefaultCurrencyCodeRon {
    return this.defaultCurrencyCode == CurrencyCode.ron;
  }

  bool get isDefaultCurrencyCodeRsd {
    return this.defaultCurrencyCode == CurrencyCode.rsd;
  }

  bool get isDefaultCurrencyCodeRub {
    return this.defaultCurrencyCode == CurrencyCode.rub;
  }

  bool get isDefaultCurrencyCodeRwf {
    return this.defaultCurrencyCode == CurrencyCode.rwf;
  }

  bool get isDefaultCurrencyCodeSar {
    return this.defaultCurrencyCode == CurrencyCode.sar;
  }

  bool get isDefaultCurrencyCodeSbd {
    return this.defaultCurrencyCode == CurrencyCode.sbd;
  }

  bool get isDefaultCurrencyCodeScr {
    return this.defaultCurrencyCode == CurrencyCode.scr;
  }

  bool get isDefaultCurrencyCodeSdg {
    return this.defaultCurrencyCode == CurrencyCode.sdg;
  }

  bool get isDefaultCurrencyCodeSek {
    return this.defaultCurrencyCode == CurrencyCode.sek;
  }

  bool get isDefaultCurrencyCodeSgd {
    return this.defaultCurrencyCode == CurrencyCode.sgd;
  }

  bool get isDefaultCurrencyCodeShp {
    return this.defaultCurrencyCode == CurrencyCode.shp;
  }

  bool get isDefaultCurrencyCodeSll {
    return this.defaultCurrencyCode == CurrencyCode.sll;
  }

  bool get isDefaultCurrencyCodeSos {
    return this.defaultCurrencyCode == CurrencyCode.sos;
  }

  bool get isDefaultCurrencyCodeSrd {
    return this.defaultCurrencyCode == CurrencyCode.srd;
  }

  bool get isDefaultCurrencyCodeSsp {
    return this.defaultCurrencyCode == CurrencyCode.ssp;
  }

  bool get isDefaultCurrencyCodeStn {
    return this.defaultCurrencyCode == CurrencyCode.stn;
  }

  bool get isDefaultCurrencyCodeSvc {
    return this.defaultCurrencyCode == CurrencyCode.svc;
  }

  bool get isDefaultCurrencyCodeSyp {
    return this.defaultCurrencyCode == CurrencyCode.syp;
  }

  bool get isDefaultCurrencyCodeSzl {
    return this.defaultCurrencyCode == CurrencyCode.szl;
  }

  bool get isDefaultCurrencyCodeThb {
    return this.defaultCurrencyCode == CurrencyCode.thb;
  }

  bool get isDefaultCurrencyCodeTjs {
    return this.defaultCurrencyCode == CurrencyCode.tjs;
  }

  bool get isDefaultCurrencyCodeTmt {
    return this.defaultCurrencyCode == CurrencyCode.tmt;
  }

  bool get isDefaultCurrencyCodeTnd {
    return this.defaultCurrencyCode == CurrencyCode.tnd;
  }

  bool get isDefaultCurrencyCodeTop {
    return this.defaultCurrencyCode == CurrencyCode.top;
  }

  bool get isDefaultCurrencyCodeTry_ {
    return this.defaultCurrencyCode == CurrencyCode.try_;
  }

  bool get isDefaultCurrencyCodeTtd {
    return this.defaultCurrencyCode == CurrencyCode.ttd;
  }

  bool get isDefaultCurrencyCodeTwd {
    return this.defaultCurrencyCode == CurrencyCode.twd;
  }

  bool get isDefaultCurrencyCodeTzs {
    return this.defaultCurrencyCode == CurrencyCode.tzs;
  }

  bool get isDefaultCurrencyCodeUah {
    return this.defaultCurrencyCode == CurrencyCode.uah;
  }

  bool get isDefaultCurrencyCodeUgx {
    return this.defaultCurrencyCode == CurrencyCode.ugx;
  }

  bool get isDefaultCurrencyCodeUsd {
    return this.defaultCurrencyCode == CurrencyCode.usd;
  }

  bool get isDefaultCurrencyCodeUyu {
    return this.defaultCurrencyCode == CurrencyCode.uyu;
  }

  bool get isDefaultCurrencyCodeUzs {
    return this.defaultCurrencyCode == CurrencyCode.uzs;
  }

  bool get isDefaultCurrencyCodeVes {
    return this.defaultCurrencyCode == CurrencyCode.ves;
  }

  bool get isDefaultCurrencyCodeVnd {
    return this.defaultCurrencyCode == CurrencyCode.vnd;
  }

  bool get isDefaultCurrencyCodeVuv {
    return this.defaultCurrencyCode == CurrencyCode.vuv;
  }

  bool get isDefaultCurrencyCodeWst {
    return this.defaultCurrencyCode == CurrencyCode.wst;
  }

  bool get isDefaultCurrencyCodeXaf {
    return this.defaultCurrencyCode == CurrencyCode.xaf;
  }

  bool get isDefaultCurrencyCodeXcd {
    return this.defaultCurrencyCode == CurrencyCode.xcd;
  }

  bool get isDefaultCurrencyCodeXof {
    return this.defaultCurrencyCode == CurrencyCode.xof;
  }

  bool get isDefaultCurrencyCodeXpf {
    return this.defaultCurrencyCode == CurrencyCode.xpf;
  }

  bool get isDefaultCurrencyCodeYer {
    return this.defaultCurrencyCode == CurrencyCode.yer;
  }

  bool get isDefaultCurrencyCodeZar {
    return this.defaultCurrencyCode == CurrencyCode.zar;
  }

  bool get isDefaultCurrencyCodeZmw {
    return this.defaultCurrencyCode == CurrencyCode.zmw;
  }

  bool get isDefaultCurrencyCodeZwl {
    return this.defaultCurrencyCode == CurrencyCode.zwl;
  }

  bool get isDefaultLanguageCodeAf {
    return this.defaultLanguageCode == LanguageCode.af;
  }

  bool get isDefaultLanguageCodeAk {
    return this.defaultLanguageCode == LanguageCode.ak;
  }

  bool get isDefaultLanguageCodeAm {
    return this.defaultLanguageCode == LanguageCode.am;
  }

  bool get isDefaultLanguageCodeAr {
    return this.defaultLanguageCode == LanguageCode.ar;
  }

  bool get isDefaultLanguageCodeAs_ {
    return this.defaultLanguageCode == LanguageCode.as_;
  }

  bool get isDefaultLanguageCodeAz {
    return this.defaultLanguageCode == LanguageCode.az;
  }

  bool get isDefaultLanguageCodeBe {
    return this.defaultLanguageCode == LanguageCode.be;
  }

  bool get isDefaultLanguageCodeBg {
    return this.defaultLanguageCode == LanguageCode.bg;
  }

  bool get isDefaultLanguageCodeBm {
    return this.defaultLanguageCode == LanguageCode.bm;
  }

  bool get isDefaultLanguageCodeBn {
    return this.defaultLanguageCode == LanguageCode.bn;
  }

  bool get isDefaultLanguageCodeBo {
    return this.defaultLanguageCode == LanguageCode.bo;
  }

  bool get isDefaultLanguageCodeBr {
    return this.defaultLanguageCode == LanguageCode.br;
  }

  bool get isDefaultLanguageCodeBs {
    return this.defaultLanguageCode == LanguageCode.bs;
  }

  bool get isDefaultLanguageCodeCa {
    return this.defaultLanguageCode == LanguageCode.ca;
  }

  bool get isDefaultLanguageCodeCe {
    return this.defaultLanguageCode == LanguageCode.ce;
  }

  bool get isDefaultLanguageCodeCo {
    return this.defaultLanguageCode == LanguageCode.co;
  }

  bool get isDefaultLanguageCodeCs {
    return this.defaultLanguageCode == LanguageCode.cs;
  }

  bool get isDefaultLanguageCodeCu {
    return this.defaultLanguageCode == LanguageCode.cu;
  }

  bool get isDefaultLanguageCodeCy {
    return this.defaultLanguageCode == LanguageCode.cy;
  }

  bool get isDefaultLanguageCodeDa {
    return this.defaultLanguageCode == LanguageCode.da;
  }

  bool get isDefaultLanguageCodeDe {
    return this.defaultLanguageCode == LanguageCode.de;
  }

  bool get isDefaultLanguageCodeDeAt {
    return this.defaultLanguageCode == LanguageCode.deAt;
  }

  bool get isDefaultLanguageCodeDeCh {
    return this.defaultLanguageCode == LanguageCode.deCh;
  }

  bool get isDefaultLanguageCodeDz {
    return this.defaultLanguageCode == LanguageCode.dz;
  }

  bool get isDefaultLanguageCodeEe {
    return this.defaultLanguageCode == LanguageCode.ee;
  }

  bool get isDefaultLanguageCodeEl {
    return this.defaultLanguageCode == LanguageCode.el;
  }

  bool get isDefaultLanguageCodeEn {
    return this.defaultLanguageCode == LanguageCode.en;
  }

  bool get isDefaultLanguageCodeEnAu {
    return this.defaultLanguageCode == LanguageCode.enAu;
  }

  bool get isDefaultLanguageCodeEnCa {
    return this.defaultLanguageCode == LanguageCode.enCa;
  }

  bool get isDefaultLanguageCodeEnGb {
    return this.defaultLanguageCode == LanguageCode.enGb;
  }

  bool get isDefaultLanguageCodeEnUs {
    return this.defaultLanguageCode == LanguageCode.enUs;
  }

  bool get isDefaultLanguageCodeEo {
    return this.defaultLanguageCode == LanguageCode.eo;
  }

  bool get isDefaultLanguageCodeEs {
    return this.defaultLanguageCode == LanguageCode.es;
  }

  bool get isDefaultLanguageCodeEsEs {
    return this.defaultLanguageCode == LanguageCode.esEs;
  }

  bool get isDefaultLanguageCodeEsMx {
    return this.defaultLanguageCode == LanguageCode.esMx;
  }

  bool get isDefaultLanguageCodeEt {
    return this.defaultLanguageCode == LanguageCode.et;
  }

  bool get isDefaultLanguageCodeEu {
    return this.defaultLanguageCode == LanguageCode.eu;
  }

  bool get isDefaultLanguageCodeFa {
    return this.defaultLanguageCode == LanguageCode.fa;
  }

  bool get isDefaultLanguageCodeFaAf {
    return this.defaultLanguageCode == LanguageCode.faAf;
  }

  bool get isDefaultLanguageCodeFf {
    return this.defaultLanguageCode == LanguageCode.ff;
  }

  bool get isDefaultLanguageCodeFi {
    return this.defaultLanguageCode == LanguageCode.fi;
  }

  bool get isDefaultLanguageCodeFo {
    return this.defaultLanguageCode == LanguageCode.fo;
  }

  bool get isDefaultLanguageCodeFr {
    return this.defaultLanguageCode == LanguageCode.fr;
  }

  bool get isDefaultLanguageCodeFrCa {
    return this.defaultLanguageCode == LanguageCode.frCa;
  }

  bool get isDefaultLanguageCodeFrCh {
    return this.defaultLanguageCode == LanguageCode.frCh;
  }

  bool get isDefaultLanguageCodeFy {
    return this.defaultLanguageCode == LanguageCode.fy;
  }

  bool get isDefaultLanguageCodeGa {
    return this.defaultLanguageCode == LanguageCode.ga;
  }

  bool get isDefaultLanguageCodeGd {
    return this.defaultLanguageCode == LanguageCode.gd;
  }

  bool get isDefaultLanguageCodeGl {
    return this.defaultLanguageCode == LanguageCode.gl;
  }

  bool get isDefaultLanguageCodeGu {
    return this.defaultLanguageCode == LanguageCode.gu;
  }

  bool get isDefaultLanguageCodeGv {
    return this.defaultLanguageCode == LanguageCode.gv;
  }

  bool get isDefaultLanguageCodeHa {
    return this.defaultLanguageCode == LanguageCode.ha;
  }

  bool get isDefaultLanguageCodeHe {
    return this.defaultLanguageCode == LanguageCode.he;
  }

  bool get isDefaultLanguageCodeHi {
    return this.defaultLanguageCode == LanguageCode.hi;
  }

  bool get isDefaultLanguageCodeHr {
    return this.defaultLanguageCode == LanguageCode.hr;
  }

  bool get isDefaultLanguageCodeHt {
    return this.defaultLanguageCode == LanguageCode.ht;
  }

  bool get isDefaultLanguageCodeHu {
    return this.defaultLanguageCode == LanguageCode.hu;
  }

  bool get isDefaultLanguageCodeHy {
    return this.defaultLanguageCode == LanguageCode.hy;
  }

  bool get isDefaultLanguageCodeIa {
    return this.defaultLanguageCode == LanguageCode.ia;
  }

  bool get isDefaultLanguageCodeId {
    return this.defaultLanguageCode == LanguageCode.id;
  }

  bool get isDefaultLanguageCodeIg {
    return this.defaultLanguageCode == LanguageCode.ig;
  }

  bool get isDefaultLanguageCodeIi {
    return this.defaultLanguageCode == LanguageCode.ii;
  }

  bool get isDefaultLanguageCodeIs_ {
    return this.defaultLanguageCode == LanguageCode.is_;
  }

  bool get isDefaultLanguageCodeIt {
    return this.defaultLanguageCode == LanguageCode.it;
  }

  bool get isDefaultLanguageCodeJa {
    return this.defaultLanguageCode == LanguageCode.ja;
  }

  bool get isDefaultLanguageCodeJv {
    return this.defaultLanguageCode == LanguageCode.jv;
  }

  bool get isDefaultLanguageCodeKa {
    return this.defaultLanguageCode == LanguageCode.ka;
  }

  bool get isDefaultLanguageCodeKi {
    return this.defaultLanguageCode == LanguageCode.ki;
  }

  bool get isDefaultLanguageCodeKk {
    return this.defaultLanguageCode == LanguageCode.kk;
  }

  bool get isDefaultLanguageCodeKl {
    return this.defaultLanguageCode == LanguageCode.kl;
  }

  bool get isDefaultLanguageCodeKm {
    return this.defaultLanguageCode == LanguageCode.km;
  }

  bool get isDefaultLanguageCodeKn {
    return this.defaultLanguageCode == LanguageCode.kn;
  }

  bool get isDefaultLanguageCodeKo {
    return this.defaultLanguageCode == LanguageCode.ko;
  }

  bool get isDefaultLanguageCodeKs {
    return this.defaultLanguageCode == LanguageCode.ks;
  }

  bool get isDefaultLanguageCodeKu {
    return this.defaultLanguageCode == LanguageCode.ku;
  }

  bool get isDefaultLanguageCodeKw {
    return this.defaultLanguageCode == LanguageCode.kw;
  }

  bool get isDefaultLanguageCodeKy {
    return this.defaultLanguageCode == LanguageCode.ky;
  }

  bool get isDefaultLanguageCodeLa {
    return this.defaultLanguageCode == LanguageCode.la;
  }

  bool get isDefaultLanguageCodeLb {
    return this.defaultLanguageCode == LanguageCode.lb;
  }

  bool get isDefaultLanguageCodeLg {
    return this.defaultLanguageCode == LanguageCode.lg;
  }

  bool get isDefaultLanguageCodeLn {
    return this.defaultLanguageCode == LanguageCode.ln;
  }

  bool get isDefaultLanguageCodeLo {
    return this.defaultLanguageCode == LanguageCode.lo;
  }

  bool get isDefaultLanguageCodeLt {
    return this.defaultLanguageCode == LanguageCode.lt;
  }

  bool get isDefaultLanguageCodeLu {
    return this.defaultLanguageCode == LanguageCode.lu;
  }

  bool get isDefaultLanguageCodeLv {
    return this.defaultLanguageCode == LanguageCode.lv;
  }

  bool get isDefaultLanguageCodeMg {
    return this.defaultLanguageCode == LanguageCode.mg;
  }

  bool get isDefaultLanguageCodeMi {
    return this.defaultLanguageCode == LanguageCode.mi;
  }

  bool get isDefaultLanguageCodeMk {
    return this.defaultLanguageCode == LanguageCode.mk;
  }

  bool get isDefaultLanguageCodeMl {
    return this.defaultLanguageCode == LanguageCode.ml;
  }

  bool get isDefaultLanguageCodeMn {
    return this.defaultLanguageCode == LanguageCode.mn;
  }

  bool get isDefaultLanguageCodeMr {
    return this.defaultLanguageCode == LanguageCode.mr;
  }

  bool get isDefaultLanguageCodeMs {
    return this.defaultLanguageCode == LanguageCode.ms;
  }

  bool get isDefaultLanguageCodeMt {
    return this.defaultLanguageCode == LanguageCode.mt;
  }

  bool get isDefaultLanguageCodeMy {
    return this.defaultLanguageCode == LanguageCode.my;
  }

  bool get isDefaultLanguageCodeNb {
    return this.defaultLanguageCode == LanguageCode.nb;
  }

  bool get isDefaultLanguageCodeNd {
    return this.defaultLanguageCode == LanguageCode.nd;
  }

  bool get isDefaultLanguageCodeNe {
    return this.defaultLanguageCode == LanguageCode.ne;
  }

  bool get isDefaultLanguageCodeNl {
    return this.defaultLanguageCode == LanguageCode.nl;
  }

  bool get isDefaultLanguageCodeNlBe {
    return this.defaultLanguageCode == LanguageCode.nlBe;
  }

  bool get isDefaultLanguageCodeNn {
    return this.defaultLanguageCode == LanguageCode.nn;
  }

  bool get isDefaultLanguageCodeNy {
    return this.defaultLanguageCode == LanguageCode.ny;
  }

  bool get isDefaultLanguageCodeOm {
    return this.defaultLanguageCode == LanguageCode.om;
  }

  bool get isDefaultLanguageCodeOr {
    return this.defaultLanguageCode == LanguageCode.or;
  }

  bool get isDefaultLanguageCodeOs {
    return this.defaultLanguageCode == LanguageCode.os;
  }

  bool get isDefaultLanguageCodePa {
    return this.defaultLanguageCode == LanguageCode.pa;
  }

  bool get isDefaultLanguageCodePl {
    return this.defaultLanguageCode == LanguageCode.pl;
  }

  bool get isDefaultLanguageCodePs {
    return this.defaultLanguageCode == LanguageCode.ps;
  }

  bool get isDefaultLanguageCodePt {
    return this.defaultLanguageCode == LanguageCode.pt;
  }

  bool get isDefaultLanguageCodePtBr {
    return this.defaultLanguageCode == LanguageCode.ptBr;
  }

  bool get isDefaultLanguageCodePtPt {
    return this.defaultLanguageCode == LanguageCode.ptPt;
  }

  bool get isDefaultLanguageCodeQu {
    return this.defaultLanguageCode == LanguageCode.qu;
  }

  bool get isDefaultLanguageCodeRm {
    return this.defaultLanguageCode == LanguageCode.rm;
  }

  bool get isDefaultLanguageCodeRn {
    return this.defaultLanguageCode == LanguageCode.rn;
  }

  bool get isDefaultLanguageCodeRo {
    return this.defaultLanguageCode == LanguageCode.ro;
  }

  bool get isDefaultLanguageCodeRoMd {
    return this.defaultLanguageCode == LanguageCode.roMd;
  }

  bool get isDefaultLanguageCodeRu {
    return this.defaultLanguageCode == LanguageCode.ru;
  }

  bool get isDefaultLanguageCodeRw {
    return this.defaultLanguageCode == LanguageCode.rw;
  }

  bool get isDefaultLanguageCodeSa {
    return this.defaultLanguageCode == LanguageCode.sa;
  }

  bool get isDefaultLanguageCodeSd {
    return this.defaultLanguageCode == LanguageCode.sd;
  }

  bool get isDefaultLanguageCodeSe {
    return this.defaultLanguageCode == LanguageCode.se;
  }

  bool get isDefaultLanguageCodeSg {
    return this.defaultLanguageCode == LanguageCode.sg;
  }

  bool get isDefaultLanguageCodeSi {
    return this.defaultLanguageCode == LanguageCode.si;
  }

  bool get isDefaultLanguageCodeSk {
    return this.defaultLanguageCode == LanguageCode.sk;
  }

  bool get isDefaultLanguageCodeSl {
    return this.defaultLanguageCode == LanguageCode.sl;
  }

  bool get isDefaultLanguageCodeSm {
    return this.defaultLanguageCode == LanguageCode.sm;
  }

  bool get isDefaultLanguageCodeSn {
    return this.defaultLanguageCode == LanguageCode.sn;
  }

  bool get isDefaultLanguageCodeSo {
    return this.defaultLanguageCode == LanguageCode.so;
  }

  bool get isDefaultLanguageCodeSq {
    return this.defaultLanguageCode == LanguageCode.sq;
  }

  bool get isDefaultLanguageCodeSr {
    return this.defaultLanguageCode == LanguageCode.sr;
  }

  bool get isDefaultLanguageCodeSt {
    return this.defaultLanguageCode == LanguageCode.st;
  }

  bool get isDefaultLanguageCodeSu {
    return this.defaultLanguageCode == LanguageCode.su;
  }

  bool get isDefaultLanguageCodeSv {
    return this.defaultLanguageCode == LanguageCode.sv;
  }

  bool get isDefaultLanguageCodeSw {
    return this.defaultLanguageCode == LanguageCode.sw;
  }

  bool get isDefaultLanguageCodeSwCd {
    return this.defaultLanguageCode == LanguageCode.swCd;
  }

  bool get isDefaultLanguageCodeTa {
    return this.defaultLanguageCode == LanguageCode.ta;
  }

  bool get isDefaultLanguageCodeTe {
    return this.defaultLanguageCode == LanguageCode.te;
  }

  bool get isDefaultLanguageCodeTg {
    return this.defaultLanguageCode == LanguageCode.tg;
  }

  bool get isDefaultLanguageCodeTh {
    return this.defaultLanguageCode == LanguageCode.th;
  }

  bool get isDefaultLanguageCodeTi {
    return this.defaultLanguageCode == LanguageCode.ti;
  }

  bool get isDefaultLanguageCodeTk {
    return this.defaultLanguageCode == LanguageCode.tk;
  }

  bool get isDefaultLanguageCodeTo {
    return this.defaultLanguageCode == LanguageCode.to;
  }

  bool get isDefaultLanguageCodeTr {
    return this.defaultLanguageCode == LanguageCode.tr;
  }

  bool get isDefaultLanguageCodeTt {
    return this.defaultLanguageCode == LanguageCode.tt;
  }

  bool get isDefaultLanguageCodeUg {
    return this.defaultLanguageCode == LanguageCode.ug;
  }

  bool get isDefaultLanguageCodeUk {
    return this.defaultLanguageCode == LanguageCode.uk;
  }

  bool get isDefaultLanguageCodeUr {
    return this.defaultLanguageCode == LanguageCode.ur;
  }

  bool get isDefaultLanguageCodeUz {
    return this.defaultLanguageCode == LanguageCode.uz;
  }

  bool get isDefaultLanguageCodeVi {
    return this.defaultLanguageCode == LanguageCode.vi;
  }

  bool get isDefaultLanguageCodeVo {
    return this.defaultLanguageCode == LanguageCode.vo;
  }

  bool get isDefaultLanguageCodeWo {
    return this.defaultLanguageCode == LanguageCode.wo;
  }

  bool get isDefaultLanguageCodeXh {
    return this.defaultLanguageCode == LanguageCode.xh;
  }

  bool get isDefaultLanguageCodeYi {
    return this.defaultLanguageCode == LanguageCode.yi;
  }

  bool get isDefaultLanguageCodeYo {
    return this.defaultLanguageCode == LanguageCode.yo;
  }

  bool get isDefaultLanguageCodeZh {
    return this.defaultLanguageCode == LanguageCode.zh;
  }

  bool get isDefaultLanguageCodeZhHans {
    return this.defaultLanguageCode == LanguageCode.zhHans;
  }

  bool get isDefaultLanguageCodeZhHant {
    return this.defaultLanguageCode == LanguageCode.zhHant;
  }

  bool get isDefaultLanguageCodeZu {
    return this.defaultLanguageCode == LanguageCode.zu;
  }

  bool get hasDefaultShippingZone {
    return this.defaultShippingZone != null;
  }

  bool get noDefaultShippingZone {
    return this.defaultShippingZone == null;
  }

  Zone get defaultShippingZoneRequired {
    return this.defaultShippingZone ??
        (throw StateError('defaultShippingZone is required but was null'));
  }

  bool get hasDefaultTaxZone {
    return this.defaultTaxZone != null;
  }

  bool get noDefaultTaxZone {
    return this.defaultTaxZone == null;
  }

  Zone get defaultTaxZoneRequired {
    return this.defaultTaxZone ??
        (throw StateError('defaultTaxZone is required but was null'));
  }

  bool get hasId {
    return this.id.isNotEmpty;
  }

  bool get noId {
    return this.id.isEmpty;
  }

  bool get hasOutOfStockThreshold {
    return this.outOfStockThreshold != null;
  }

  bool get noOutOfStockThreshold {
    return this.outOfStockThreshold == null;
  }

  int get outOfStockThresholdRequired {
    return this.outOfStockThreshold ??
        (throw StateError('outOfStockThreshold is required but was null'));
  }

  bool get hasSeller {
    return this.seller != null;
  }

  bool get noSeller {
    return this.seller == null;
  }

  Seller get sellerRequired {
    return this.seller ?? (throw StateError('seller is required but was null'));
  }

  bool get hasToken {
    return this.token.isNotEmpty;
  }

  bool get noToken {
    return this.token.isEmpty;
  }

  bool get hasTrackInventory {
    return this.trackInventory != null;
  }

  bool get noTrackInventory {
    return this.trackInventory == null;
  }

  bool get trackInventoryRequired {
    return this.trackInventory ??
        (throw StateError('trackInventory is required but was null'));
  }
}

extension ChannelSerialization on Channel {
  Map<String, dynamic> toJson() {
    return _$ChannelToJson(this);
  }
}

enum Channel$ {
  availableCurrencyCodes,
  availableLanguageCodes,
  code,
  createdAt,
  currencyCode,
  customFields,
  defaultCurrencyCode,
  defaultLanguageCode,
  defaultShippingZone,
  defaultTaxZone,
  id,
  outOfStockThreshold,
  pricesIncludeTax,
  seller,
  token,
  trackInventory,
  updatedAt,
}

class ChannelPatch extends PatchBase<Channel, Channel$> {
  Channel applyTo(Channel entity) {
    return entity.patchWithChannel(this);
  }

  ChannelPatch withAvailableCurrencyCodes(List<CurrencyCode>? value) {
    patchMap[Channel$.availableCurrencyCodes] = value;
    return this;
  }

  ChannelPatch withAvailableLanguageCodes(List<LanguageCode>? value) {
    patchMap[Channel$.availableLanguageCodes] = value;
    return this;
  }

  ChannelPatch withCode(String? value) {
    patchMap[Channel$.code] = value;
    return this;
  }

  ChannelPatch withCreatedAt(DateTime? value) {
    patchMap[Channel$.createdAt] = value;
    return this;
  }

  ChannelPatch withCurrencyCode(CurrencyCode? value) {
    patchMap[Channel$.currencyCode] = value;
    return this;
  }

  ChannelPatch withCustomFields(Map<String, dynamic>? value) {
    patchMap[Channel$.customFields] = value;
    return this;
  }

  ChannelPatch withDefaultCurrencyCode(CurrencyCode? value) {
    patchMap[Channel$.defaultCurrencyCode] = value;
    return this;
  }

  ChannelPatch withDefaultLanguageCode(LanguageCode? value) {
    patchMap[Channel$.defaultLanguageCode] = value;
    return this;
  }

  ChannelPatch withDefaultShippingZone(Zone? value) {
    patchMap[Channel$.defaultShippingZone] = value;
    return this;
  }

  ChannelPatch withDefaultShippingZonePatch(ZonePatch patch) {
    patchMap[Channel$.defaultShippingZone] = patch;
    return this;
  }

  ChannelPatch withDefaultShippingZonePatchFunc(
    ZonePatch Function(ZonePatch) patch,
  ) {
    patchMap[Channel$.defaultShippingZone] = (dynamic current) {
      var currentPatch = ZonePatch();
      return patch(currentPatch).applyTo(current as Zone);
    };
    return this;
  }

  ChannelPatch withDefaultTaxZone(Zone? value) {
    patchMap[Channel$.defaultTaxZone] = value;
    return this;
  }

  ChannelPatch withDefaultTaxZonePatch(ZonePatch patch) {
    patchMap[Channel$.defaultTaxZone] = patch;
    return this;
  }

  ChannelPatch withDefaultTaxZonePatchFunc(
    ZonePatch Function(ZonePatch) patch,
  ) {
    patchMap[Channel$.defaultTaxZone] = (dynamic current) {
      var currentPatch = ZonePatch();
      return patch(currentPatch).applyTo(current as Zone);
    };
    return this;
  }

  ChannelPatch withId(String? value) {
    patchMap[Channel$.id] = value;
    return this;
  }

  ChannelPatch withOutOfStockThreshold(int? value) {
    patchMap[Channel$.outOfStockThreshold] = value;
    return this;
  }

  ChannelPatch withPricesIncludeTax(bool? value) {
    patchMap[Channel$.pricesIncludeTax] = value;
    return this;
  }

  ChannelPatch withSeller(Seller? value) {
    patchMap[Channel$.seller] = value;
    return this;
  }

  ChannelPatch withSellerPatch(SellerPatch patch) {
    patchMap[Channel$.seller] = patch;
    return this;
  }

  ChannelPatch withSellerPatchFunc(SellerPatch Function(SellerPatch) patch) {
    patchMap[Channel$.seller] = (dynamic current) {
      var currentPatch = SellerPatch();
      return patch(currentPatch).applyTo(current as Seller);
    };
    return this;
  }

  ChannelPatch withToken(String? value) {
    patchMap[Channel$.token] = value;
    return this;
  }

  ChannelPatch withTrackInventory(bool? value) {
    patchMap[Channel$.trackInventory] = value;
    return this;
  }

  ChannelPatch withUpdatedAt(DateTime? value) {
    patchMap[Channel$.updatedAt] = value;
    return this;
  }
}

/// Field descriptors for [Channel] query construction
abstract final class ChannelFields {
  static const availableCurrencyCodes = Field<Channel, List<CurrencyCode>>(
    'availableCurrencyCodes',
    _$availableCurrencyCodes,
  );

  static const availableLanguageCodes = Field<Channel, List<LanguageCode>?>(
    'availableLanguageCodes',
    _$availableLanguageCodes,
  );

  static const code = Field<Channel, String>('code', _$code);

  static const createdAt = Field<Channel, DateTime>('createdAt', _$createdAt);

  static const currencyCode = Field<Channel, CurrencyCode>(
    'currencyCode',
    _$currencyCode,
  );

  static const customFields = Field<Channel, Map<String, dynamic>?>(
    'customFields',
    _$customFields,
  );

  static const defaultCurrencyCode = Field<Channel, CurrencyCode>(
    'defaultCurrencyCode',
    _$defaultCurrencyCode,
  );

  static const defaultLanguageCode = Field<Channel, LanguageCode>(
    'defaultLanguageCode',
    _$defaultLanguageCode,
  );

  static const defaultShippingZone = Field<Channel, Zone?>(
    'defaultShippingZone',
    _$defaultShippingZone,
  );

  static const defaultTaxZone = Field<Channel, Zone?>(
    'defaultTaxZone',
    _$defaultTaxZone,
  );

  static const id = Field<Channel, String>('id', _$id);

  static const outOfStockThreshold = Field<Channel, int?>(
    'outOfStockThreshold',
    _$outOfStockThreshold,
  );

  static const pricesIncludeTax = Field<Channel, bool>(
    'pricesIncludeTax',
    _$pricesIncludeTax,
  );

  static const seller = Field<Channel, Seller?>('seller', _$seller);

  static const token = Field<Channel, String>('token', _$token);

  static const trackInventory = Field<Channel, bool?>(
    'trackInventory',
    _$trackInventory,
  );

  static const updatedAt = Field<Channel, DateTime>('updatedAt', _$updatedAt);

  static List<CurrencyCode> _$availableCurrencyCodes(Channel e) {
    return e.availableCurrencyCodes;
  }

  static List<LanguageCode>? _$availableLanguageCodes(Channel e) {
    return e.availableLanguageCodes;
  }

  static String _$code(Channel e) {
    return e.code;
  }

  static DateTime _$createdAt(Channel e) {
    return e.createdAt;
  }

  static CurrencyCode _$currencyCode(Channel e) {
    return e.currencyCode;
  }

  static Map<String, dynamic>? _$customFields(Channel e) {
    return e.customFields;
  }

  static CurrencyCode _$defaultCurrencyCode(Channel e) {
    return e.defaultCurrencyCode;
  }

  static LanguageCode _$defaultLanguageCode(Channel e) {
    return e.defaultLanguageCode;
  }

  static Zone? _$defaultShippingZone(Channel e) {
    return e.defaultShippingZone;
  }

  static Zone? _$defaultTaxZone(Channel e) {
    return e.defaultTaxZone;
  }

  static String _$id(Channel e) {
    return e.id;
  }

  static int? _$outOfStockThreshold(Channel e) {
    return e.outOfStockThreshold;
  }

  static bool _$pricesIncludeTax(Channel e) {
    return e.pricesIncludeTax;
  }

  static Seller? _$seller(Channel e) {
    return e.seller;
  }

  static String _$token(Channel e) {
    return e.token;
  }

  static bool? _$trackInventory(Channel e) {
    return e.trackInventory;
  }

  static DateTime _$updatedAt(Channel e) {
    return e.updatedAt;
  }
}

extension ChannelCompareE on Channel {
  Map<String, dynamic> compareToChannel(Channel other) {
    final Map<String, dynamic> diff = {};

    if (availableCurrencyCodes != other.availableCurrencyCodes) {
      diff['availableCurrencyCodes'] = () => other.availableCurrencyCodes;
    }

    if (availableLanguageCodes != other.availableLanguageCodes) {
      diff['availableLanguageCodes'] = () => other.availableLanguageCodes;
    }

    if (code != other.code) {
      diff['code'] = () => other.code;
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

    if (defaultCurrencyCode != other.defaultCurrencyCode) {
      diff['defaultCurrencyCode'] = () => other.defaultCurrencyCode;
    }

    if (defaultLanguageCode != other.defaultLanguageCode) {
      diff['defaultLanguageCode'] = () => other.defaultLanguageCode;
    }

    if (defaultShippingZone != other.defaultShippingZone) {
      diff['defaultShippingZone'] = () => other.defaultShippingZone;
    }

    if (defaultTaxZone != other.defaultTaxZone) {
      diff['defaultTaxZone'] = () => other.defaultTaxZone;
    }

    if (id != other.id) {
      diff['id'] = () => other.id;
    }

    if (outOfStockThreshold != other.outOfStockThreshold) {
      diff['outOfStockThreshold'] = () => other.outOfStockThreshold;
    }

    if (pricesIncludeTax != other.pricesIncludeTax) {
      diff['pricesIncludeTax'] = () => other.pricesIncludeTax;
    }

    if (seller != other.seller) {
      diff['seller'] = () => other.seller;
    }

    if (token != other.token) {
      diff['token'] = () => other.token;
    }

    if (trackInventory != other.trackInventory) {
      diff['trackInventory'] = () => other.trackInventory;
    }

    if (updatedAt != other.updatedAt) {
      diff['updatedAt'] = () => other.updatedAt;
    }
    return diff;
  }
}
