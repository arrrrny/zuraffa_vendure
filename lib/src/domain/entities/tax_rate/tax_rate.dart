import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../customer_group/customer_group.dart';
import '../tax_category/tax_category.dart';
import '../zone/zone.dart';

part 'tax_rate.zorphy.dart';
part 'tax_rate.g.dart';

/// Vendure `TaxRate` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $TaxRate {
  TaxCategory get category;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  CustomerGroup? get customerGroup;
  bool get enabled;
  String get id;
  String get name;
  DateTime get updatedAt;
  double get value;
  Zone get zone;
}
