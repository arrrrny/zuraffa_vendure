import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../history_entry_filter_parameter/history_entry_filter_parameter.dart';
import '../history_entry_sort_parameter/history_entry_sort_parameter.dart';
import '../enums/logical_operator.dart';

part 'history_entry_list_options.zorphy.dart';
part 'history_entry_list_options.g.dart';

/// Vendure `HistoryEntryListOptions` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $HistoryEntryListOptions {
  HistoryEntryFilterParameter? get filter;
  LogicalOperator? get filterOperator;
  int? get skip;
  HistoryEntrySortParameter? get sort;
  int? get take;
}
