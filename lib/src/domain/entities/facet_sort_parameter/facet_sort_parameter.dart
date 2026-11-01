import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'facet_sort_parameter.zorphy.dart';
part 'facet_sort_parameter.g.dart';

/// Vendure `FacetSortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetSortParameter {
  SortOrder? get code;
  SortOrder? get createdAt;
  SortOrder? get id;
  SortOrder? get name;
  SortOrder? get updatedAt;
}
