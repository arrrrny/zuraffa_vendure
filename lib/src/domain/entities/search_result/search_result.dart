import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/currency_code.dart';
import '../search_result_asset/search_result_asset.dart';
import '../search_result_price/search_result_price.dart';

part 'search_result.zorphy.dart';
part 'search_result.g.dart';

/// Vendure `SearchResult` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $SearchResult {
  List<String> get collectionIds;
  CurrencyCode get currencyCode;
  String get description;
  List<String> get facetIds;
  List<String> get facetValueIds;
  bool get inStock;
  SearchResultPrice get price;
  SearchResultPrice get priceWithTax;
  SearchResultAsset? get productAsset;
  String get productId;
  String get productName;
  SearchResultAsset? get productVariantAsset;
  String get productVariantId;
  String get productVariantName;
  double get score;
  String get sku;
  String get slug;
}
