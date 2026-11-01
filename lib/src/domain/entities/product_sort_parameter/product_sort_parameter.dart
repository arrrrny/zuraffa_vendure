import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'product_sort_parameter.zorphy.dart';
part 'product_sort_parameter.g.dart';

/// Vendure `ProductSortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductSortParameter {
  SortOrder? get createdAt;
  SortOrder? get description;
  SortOrder? get id;
  SortOrder? get name;
  SortOrder? get slug;
  SortOrder? get updatedAt;
}
