import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/logical_operator.dart';
import '../product_variant_filter_parameter/product_variant_filter_parameter.dart';
import '../product_variant_sort_parameter/product_variant_sort_parameter.dart';

part 'product_variant_list_options.zorphy.dart';
part 'product_variant_list_options.g.dart';

/// Vendure `ProductVariantListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductVariantListOptions {
  ProductVariantFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  ProductVariantSortParameter? get sort;
  int? get take;
}
