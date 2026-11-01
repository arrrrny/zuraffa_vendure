import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';
import '../product_option/product_option.dart';
import '../product_option_group_translation/product_option_group_translation.dart';

part 'product_option_group.zorphy.dart';
part 'product_option_group.g.dart';

/// Vendure `ProductOptionGroup` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductOptionGroup {
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<ProductOption> get options;
  List<ProductOptionGroupTranslation> get translations;
  DateTime get updatedAt;
}
