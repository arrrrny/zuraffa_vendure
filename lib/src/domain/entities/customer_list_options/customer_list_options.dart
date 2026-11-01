import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../customer_filter_parameter/customer_filter_parameter.dart';
import '../customer_sort_parameter/customer_sort_parameter.dart';
import '../enums/logical_operator.dart';

part 'customer_list_options.zorphy.dart';
part 'customer_list_options.g.dart';

/// Vendure `CustomerListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CustomerListOptions {
  CustomerFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  CustomerSortParameter? get sort;
  int? get take;
}
