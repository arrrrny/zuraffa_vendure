import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../history_entry/history_entry.dart';

part 'history_entry_list.zorphy.dart';
part 'history_entry_list.g.dart';

/// Vendure `HistoryEntryList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $HistoryEntryList {
  List<HistoryEntry> get items;
  int get totalItems;
}
