import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/adjustment_type.dart';

part 'discount.zorphy.dart';
part 'discount.g.dart';

/// Vendure `Discount` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Discount {
  String get adjustmentSource;
  double get amount;
  double get amountWithTax;
  String get description;
  AdjustmentType get type;
}
