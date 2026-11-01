import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet_translation/facet_translation.dart';
import '../facet_value/facet_value.dart';
import '../facet_value_list/facet_value_list.dart';
import '../enums/language_code.dart';

part 'facet.zorphy.dart';
part 'facet.g.dart';

/// Vendure `Facet` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Facet {
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<FacetTranslation>? get translations;
  DateTime get updatedAt;
  FacetValueList? get valueList;
  List<FacetValue>? get values;
}
