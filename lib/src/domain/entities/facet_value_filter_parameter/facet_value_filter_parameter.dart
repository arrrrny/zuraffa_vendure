import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../string_operators/string_operators.dart';

part 'facet_value_filter_parameter.zorphy.dart';
part 'facet_value_filter_parameter.g.dart';

/// Vendure `FacetValueFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetValueFilterParameter {
  List<FacetValueFilterParameter>? get and;
  List<FacetValueFilterParameter>? get or;
  StringOperators? get code;
  DateOperators? get createdAt;
  IdOperators? get facetId;
  IdOperators? get id;
  StringOperators? get languageCode;
  StringOperators? get name;
  DateOperators? get updatedAt;
}
