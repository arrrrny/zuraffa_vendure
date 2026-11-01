import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';

part 'product_option_group_translation.zorphy.dart';
part 'product_option_group_translation.g.dart';

/// Vendure `ProductOptionGroupTranslation` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductOptionGroupTranslation {
  DateTime get createdAt;
  String get id;
  LanguageCode get languageCode;
  String get name;
  DateTime get updatedAt;
}
