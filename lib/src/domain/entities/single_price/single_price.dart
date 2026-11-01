import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'single_price.zorphy.dart';
part 'single_price.g.dart';

/// Vendure `SinglePrice` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $SinglePrice {
  double get value;
}
