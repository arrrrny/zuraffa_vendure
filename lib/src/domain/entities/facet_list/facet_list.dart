import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet/facet.dart';

part 'facet_list.zorphy.dart';
part 'facet_list.g.dart';

/// Vendure `FacetList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetList {
  List<Facet> get items;
  int get totalItems;
}
