import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/logical_operator.dart';
import '../order_filter_parameter/order_filter_parameter.dart';
import '../order_sort_parameter/order_sort_parameter.dart';

part 'order_list_options.zorphy.dart';
part 'order_list_options.g.dart';

/// Vendure `OrderListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderListOptions {
  OrderFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  OrderSortParameter? get sort;
  int? get take;
}
