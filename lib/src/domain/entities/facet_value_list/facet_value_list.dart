import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet_value/facet_value.dart';

part 'facet_value_list.zorphy.dart';
part 'facet_value_list.g.dart';

/// Vendure `FacetValueList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetValueList {
  List<FacetValue> get items;
  int get totalItems;
}
