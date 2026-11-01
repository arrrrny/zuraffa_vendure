import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet_value/facet_value.dart';

part 'facet_value_result.zorphy.dart';
part 'facet_value_result.g.dart';

/// Vendure `FacetValueResult` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetValueResult {
  int get count;
  FacetValue get facetValue;
}
