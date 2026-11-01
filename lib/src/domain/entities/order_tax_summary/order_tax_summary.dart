import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'order_tax_summary.zorphy.dart';
part 'order_tax_summary.g.dart';

/// Vendure `OrderTaxSummary` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderTaxSummary {
  String get description;
  double get taxBase;
  double get taxRate;
  double get taxTotal;
}
