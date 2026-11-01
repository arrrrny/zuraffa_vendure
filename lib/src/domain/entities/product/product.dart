import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../asset/asset.dart';
import '../facet_value/facet_value.dart';
import '../enums/language_code.dart';
import '../product_option_group/product_option_group.dart';
import '../product_translation/product_translation.dart';
import '../product_variant/product_variant.dart';

part 'product.zorphy.dart';
part 'product.g.dart';

/// Vendure `Product` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Product {
  List<Asset> get assets;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get description;
  bool get enabled;
  List<FacetValue> get facetValues;
  Asset? get featuredAsset;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<ProductOptionGroup> get optionGroups;
  String get slug;
  List<ProductTranslation> get translations;
  DateTime get updatedAt;
  List<ProductVariant> get variants;
}
