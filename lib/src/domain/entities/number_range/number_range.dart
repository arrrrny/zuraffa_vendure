import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'number_range.zorphy.dart';
part 'number_range.g.dart';

/// Vendure `NumberRange` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NumberRange {
  double get end;
  double get start;
}
