import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../string_operators/string_operators.dart';

part 'customer_filter_parameter.zorphy.dart';
part 'customer_filter_parameter.g.dart';

/// Vendure `CustomerFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CustomerFilterParameter {
  List<CustomerFilterParameter>? get and;
  List<CustomerFilterParameter>? get or;
  DateOperators? get createdAt;
  StringOperators? get emailAddress;
  StringOperators? get firstName;
  IdOperators? get id;
  StringOperators? get lastName;
  StringOperators? get phoneNumber;
  StringOperators? get title;
  DateOperators? get updatedAt;
}
