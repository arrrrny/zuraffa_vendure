import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/adjustment_type.dart';

part 'adjustment.zorphy.dart';
part 'adjustment.g.dart';

/// Vendure `Adjustment` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Adjustment {
  String get adjustmentSource;
  double get amount;
  Map<String, dynamic>? get data;
  String get description;
  AdjustmentType get type;
}
