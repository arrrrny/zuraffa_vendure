import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet_value_filter_parameter/facet_value_filter_parameter.dart';
import '../facet_value_sort_parameter/facet_value_sort_parameter.dart';
import '../enums/logical_operator.dart';

part 'facet_value_list_options.zorphy.dart';
part 'facet_value_list_options.g.dart';

/// Vendure `FacetValueListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetValueListOptions {
  FacetValueFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  FacetValueSortParameter? get sort;
  int? get take;
}
