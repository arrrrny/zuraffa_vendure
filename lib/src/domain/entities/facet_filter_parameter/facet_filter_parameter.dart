import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../string_operators/string_operators.dart';

part 'facet_filter_parameter.zorphy.dart';
part 'facet_filter_parameter.g.dart';

/// Vendure `FacetFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FacetFilterParameter {
  List<FacetFilterParameter>? get and;
  List<FacetFilterParameter>? get or;
  StringOperators? get code;
  DateOperators? get createdAt;
  IdOperators? get id;
  StringOperators? get languageCode;
  StringOperators? get name;
  DateOperators? get updatedAt;
}
