import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../string_operators/string_operators.dart';

part 'history_entry_filter_parameter.zorphy.dart';
part 'history_entry_filter_parameter.g.dart';

/// Vendure `HistoryEntryFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $HistoryEntryFilterParameter {
  List<HistoryEntryFilterParameter>? get and;
  List<HistoryEntryFilterParameter>? get or;
  DateOperators? get createdAt;
  IdOperators? get id;
  StringOperators? get type;
  DateOperators? get updatedAt;
}
