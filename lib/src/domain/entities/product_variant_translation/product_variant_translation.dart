import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'product_variant_translation.zorphy.dart';
part 'product_variant_translation.g.dart';

/// Vendure `ProductVariantTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductVariantTranslation {
  DateTime get createdAt;
  String get id;
  LanguageCode get languageCode;
  String get name;
  DateTime get updatedAt;
}
