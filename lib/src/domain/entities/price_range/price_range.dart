import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'price_range.zorphy.dart';
part 'price_range.g.dart';

/// Vendure `PriceRange` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PriceRange {
  double get max;
  double get min;
}
