import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'promotion_translation.zorphy.dart';
part 'promotion_translation.g.dart';

/// Vendure `PromotionTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PromotionTranslation {
  DateTime get createdAt;
  String get description;
  String get id;
  LanguageCode get languageCode;
  String get name;
  DateTime get updatedAt;
}
