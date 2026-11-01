import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'date_range.zorphy.dart';
part 'date_range.g.dart';

/// Vendure `DateRange` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $DateRange {
  DateTime get end;
  DateTime get start;
}
