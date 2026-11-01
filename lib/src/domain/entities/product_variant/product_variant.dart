import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../asset/asset.dart';
import '../enums/currency_code.dart';
import '../facet_value/facet_value.dart';
import '../enums/language_code.dart';
import '../product_option/product_option.dart';
import '../product_variant_translation/product_variant_translation.dart';
import '../tax_category/tax_category.dart';

part 'product_variant.zorphy.dart';
part 'product_variant.g.dart';

/// Vendure `ProductVariant` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductVariant {
  List<Asset> get assets;
  DateTime get createdAt;
  CurrencyCode get currencyCode;
  Map<String, dynamic>? get customFields;
  List<FacetValue> get facetValues;
  Asset? get featuredAsset;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<ProductOption> get options;
  double get price;
  double get priceWithTax;
  String get productId;
  String get sku;
  String get stockLevel;
  TaxCategory get taxCategory;
  List<ProductVariantTranslation> get translations;
  DateTime get updatedAt;
}
