import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../boolean_operators/boolean_operators.dart';
import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../string_operators/string_operators.dart';

part 'product_filter_parameter.zorphy.dart';
part 'product_filter_parameter.g.dart';

/// Vendure `ProductFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductFilterParameter {
  List<ProductFilterParameter>? get and;
  List<ProductFilterParameter>? get or;
  DateOperators? get createdAt;
  StringOperators? get description;
  BooleanOperators? get enabled;
  IdOperators? get id;
  StringOperators? get languageCode;
  StringOperators? get name;
  StringOperators? get slug;
  DateOperators? get updatedAt;
}
