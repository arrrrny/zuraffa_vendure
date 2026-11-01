import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'history_entry_sort_parameter.zorphy.dart';
part 'history_entry_sort_parameter.g.dart';

/// Vendure `HistoryEntrySortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $HistoryEntrySortParameter {
  SortOrder? get createdAt;
  SortOrder? get id;
  SortOrder? get updatedAt;
}
