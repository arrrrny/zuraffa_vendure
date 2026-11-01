import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/logical_operator.dart';
import '../product_filter_parameter/product_filter_parameter.dart';
import '../product_sort_parameter/product_sort_parameter.dart';

part 'product_list_options.zorphy.dart';
part 'product_list_options.g.dart';

/// Vendure `ProductListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductListOptions {
  ProductFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  ProductSortParameter? get sort;
  int? get take;
}
