import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'tax_category.zorphy.dart';
part 'tax_category.g.dart';

/// Vendure `TaxCategory` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $TaxCategory {
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get id;
  bool get isDefault;
  String get name;
  DateTime get updatedAt;
}
