import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'collection_translation.zorphy.dart';
part 'collection_translation.g.dart';

/// Vendure `CollectionTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CollectionTranslation {
  DateTime get createdAt;
  String get description;
  String get id;
  LanguageCode get languageCode;
  String get name;
  String get slug;
  DateTime get updatedAt;
}
