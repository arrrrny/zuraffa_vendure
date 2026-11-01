import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../number_range/number_range.dart';

part 'number_operators.zorphy.dart';
part 'number_operators.g.dart';

/// Vendure `NumberOperators` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NumberOperators {
  NumberRange? get between;
  double? get eq;
  double? get gt;
  double? get gte;
  bool? get isNull;
  double? get lt;
  double? get lte;
}
