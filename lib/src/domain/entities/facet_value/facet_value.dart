import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../facet/facet.dart';
import '../facet_value_translation/facet_value_translation.dart';
import '../enums/language_code.dart';

part 'facet_value.zorphy.dart';
part 'facet_value.g.dart';

/// Vendure `FacetValue` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetValue {
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get facetId;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<FacetValueTranslation> get translations;
  DateTime get updatedAt;
  Facet? get facet;
}
