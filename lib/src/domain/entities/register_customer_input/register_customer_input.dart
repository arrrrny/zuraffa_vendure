import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'register_customer_input.zorphy.dart';
part 'register_customer_input.g.dart';

/// Vendure `RegisterCustomerInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $RegisterCustomerInput {
  String get emailAddress;
  String? get firstName;
  String? get lastName;
  String? get password;
  String? get phoneNumber;
  String? get title;
}
