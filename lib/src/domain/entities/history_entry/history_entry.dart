import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/history_entry_type.dart';

part 'history_entry.zorphy.dart';
part 'history_entry.g.dart';

/// Vendure `HistoryEntry` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $HistoryEntry {
  DateTime get createdAt;
  Map<String, dynamic> get data;
  String get id;
  HistoryEntryType get type;
  DateTime get updatedAt;
}
