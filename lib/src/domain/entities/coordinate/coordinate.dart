import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'coordinate.zorphy.dart';
part 'coordinate.g.dart';

/// Vendure `Coordinate` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Coordinate {
  double get x;
  double get y;
}
