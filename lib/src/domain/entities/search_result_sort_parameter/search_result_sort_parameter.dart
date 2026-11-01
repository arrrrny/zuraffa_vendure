import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'search_result_sort_parameter.zorphy.dart';
part 'search_result_sort_parameter.g.dart';

/// Vendure `SearchResultSortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $SearchResultSortParameter {
  SortOrder? get name;
  SortOrder? get price;
}
