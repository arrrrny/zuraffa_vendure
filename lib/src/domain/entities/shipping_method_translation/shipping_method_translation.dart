import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'shipping_method_translation.zorphy.dart';
part 'shipping_method_translation.g.dart';

/// Vendure `ShippingMethodTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ShippingMethodTranslation {
  DateTime get createdAt;
  String get description;
  String get id;
  LanguageCode get languageCode;
  String get name;
  DateTime get updatedAt;
}
