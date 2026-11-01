import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'create_customer_input.zorphy.dart';
part 'create_customer_input.g.dart';

/// Vendure `CreateCustomerInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CreateCustomerInput {
  Map<String, dynamic>? get customFields;
  String get emailAddress;
  String get firstName;
  String get lastName;
  String? get phoneNumber;
  String? get title;
}
