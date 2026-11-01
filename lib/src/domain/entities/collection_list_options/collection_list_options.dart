import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../collection_filter_parameter/collection_filter_parameter.dart';
import '../collection_sort_parameter/collection_sort_parameter.dart';
import '../enums/logical_operator.dart';

part 'collection_list_options.zorphy.dart';
part 'collection_list_options.g.dart';

/// Vendure `CollectionListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CollectionListOptions {
  CollectionFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  CollectionSortParameter? get sort;
  int? get take;
  bool? get topLevelOnly;
}
