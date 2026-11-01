import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'product_variant_sort_parameter.zorphy.dart';
part 'product_variant_sort_parameter.g.dart';

/// Vendure `ProductVariantSortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductVariantSortParameter {
  SortOrder? get createdAt;
  SortOrder? get id;
  SortOrder? get name;
  SortOrder? get price;
  SortOrder? get priceWithTax;
  SortOrder? get productId;
  SortOrder? get sku;
  SortOrder? get stockLevel;
  SortOrder? get updatedAt;
}
