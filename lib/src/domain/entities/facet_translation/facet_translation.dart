import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'facet_translation.zorphy.dart';
part 'facet_translation.g.dart';

/// Vendure `FacetTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetTranslation {
  DateTime get createdAt;
  String get id;
  LanguageCode get languageCode;
  String get name;
  DateTime get updatedAt;
}
