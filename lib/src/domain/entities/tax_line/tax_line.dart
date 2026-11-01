import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'tax_line.zorphy.dart';
part 'tax_line.g.dart';

/// Vendure `TaxLine` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $TaxLine {
  String get description;
  double get taxRate;
}
