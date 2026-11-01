import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../collection_result/collection_result.dart';
import '../facet_value_result/facet_value_result.dart';
import '../search_result/search_result.dart';

part 'search_response.zorphy.dart';
part 'search_response.g.dart';

/// Vendure `SearchResponse` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $SearchResponse {
  List<CollectionResult> get collections;
  List<FacetValueResult> get facetValues;
  List<SearchResult> get items;
  int get totalItems;
}
