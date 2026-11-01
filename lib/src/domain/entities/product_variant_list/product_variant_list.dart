import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../product_variant/product_variant.dart';

part 'product_variant_list.zorphy.dart';
part 'product_variant_list.g.dart';

/// Vendure `ProductVariantList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductVariantList {
  List<ProductVariant> get items;
  int get totalItems;
}
