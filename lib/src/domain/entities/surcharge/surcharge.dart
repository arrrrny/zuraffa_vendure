import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../tax_line/tax_line.dart';

part 'surcharge.zorphy.dart';
part 'surcharge.g.dart';

/// Vendure `Surcharge` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Surcharge {
  DateTime get createdAt;
  String get description;
  String get id;
  double get price;
  double get priceWithTax;
  String? get sku;
  List<TaxLine> get taxLines;
  double get taxRate;
  DateTime get updatedAt;
}
