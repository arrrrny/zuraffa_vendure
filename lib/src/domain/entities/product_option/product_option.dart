import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';
import '../product_option_translation/product_option_translation.dart';

part 'product_option.zorphy.dart';
part 'product_option.g.dart';

/// Vendure `ProductOption` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductOption {
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get groupId;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<ProductOptionTranslation> get translations;
  DateTime get updatedAt;
}
