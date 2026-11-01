import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/currency_code.dart';
import '../enums/language_code.dart';
import '../seller/seller.dart';
import '../zone/zone.dart';

part 'channel.zorphy.dart';
part 'channel.g.dart';

/// Vendure `Channel` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Channel {
  List<CurrencyCode> get availableCurrencyCodes;
  List<LanguageCode>? get availableLanguageCodes;
  String get code;
  DateTime get createdAt;
  CurrencyCode get currencyCode;
  Map<String, dynamic>? get customFields;
  CurrencyCode get defaultCurrencyCode;
  LanguageCode get defaultLanguageCode;
  Zone? get defaultShippingZone;
  Zone? get defaultTaxZone;
  String get id;
  int? get outOfStockThreshold;
  bool get pricesIncludeTax;
  Seller? get seller;
  String get token;
  bool? get trackInventory;
  DateTime get updatedAt;
}
