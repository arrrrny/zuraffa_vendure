import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_range/date_range.dart';

part 'date_operators.zorphy.dart';
part 'date_operators.g.dart';

/// Vendure `DateOperators` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $DateOperators {
  DateTime? get after;
  DateTime? get before;
  DateRange? get between;
  DateTime? get eq;
  bool? get isNull;
}
