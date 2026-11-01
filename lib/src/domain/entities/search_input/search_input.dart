import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet_value_filter_input/facet_value_filter_input.dart';
import '../search_result_sort_parameter/search_result_sort_parameter.dart';

part 'search_input.zorphy.dart';
part 'search_input.g.dart';

/// Vendure `SearchInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $SearchInput {
  String? get collectionId;
  String? get collectionSlug;
  List<FacetValueFilterInput>? get facetValueFilters;
  bool? get groupByProduct;
  bool? get inStock;
  int? get skip;
  SearchResultSortParameter? get sort;
  int? get take;
  String? get term;
}
