import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../region_translation/region_translation.dart';

part 'region.zorphy.dart';
part 'region.g.dart';

/// Vendure `Region` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Region {
  String get id;
  DateTime get createdAt;
  DateTime get updatedAt;
  String get languageCode;
  String get code;
  String get type;
  String get name;
  bool get enabled;
  Region? get parent;
  String? get parentId;
  List<RegionTranslation> get translations;
}
