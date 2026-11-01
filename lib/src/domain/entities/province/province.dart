import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/language_code.dart';
import '../region/region.dart';
import '../region_translation/region_translation.dart';

part 'province.zorphy.dart';
part 'province.g.dart';

/// Vendure `Province` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Province {
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  bool get enabled;
  String get id;
  LanguageCode get languageCode;
  String get name;
  Region? get parent;
  String? get parentId;
  List<RegionTranslation> get translations;
  String get type;
  DateTime get updatedAt;
}
