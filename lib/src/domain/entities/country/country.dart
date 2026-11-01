import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';
import '../region_translation/region_translation.dart';

part 'country.zorphy.dart';
part 'country.g.dart';

/// Vendure `Country` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Country {
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  bool get enabled;
  String get id;
  LanguageCode get languageCode;
  String get name;
  String? get parentId;
  List<RegionTranslation> get translations;
  String get type;
  DateTime get updatedAt;
}
