import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'product_translation.zorphy.dart';
part 'product_translation.g.dart';

/// Vendure `ProductTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductTranslation {
  DateTime get createdAt;
  String get description;
  String get id;
  LanguageCode get languageCode;
  String get name;
  String get slug;
  DateTime get updatedAt;
}
