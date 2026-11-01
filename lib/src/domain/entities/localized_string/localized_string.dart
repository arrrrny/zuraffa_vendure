import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'localized_string.zorphy.dart';
part 'localized_string.g.dart';

/// Vendure `LocalizedString` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $LocalizedString {
  LanguageCode get languageCode;
  String get value;
}
