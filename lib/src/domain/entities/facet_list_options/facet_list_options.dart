import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet_filter_parameter/facet_filter_parameter.dart';
import '../facet_sort_parameter/facet_sort_parameter.dart';
import '../enums/logical_operator.dart';

part 'facet_list_options.zorphy.dart';
part 'facet_list_options.g.dart';

/// Vendure `FacetListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetListOptions {
  FacetFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  FacetSortParameter? get sort;
  int? get take;
}
