import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'update_customer_input.zorphy.dart';
part 'update_customer_input.g.dart';

/// Vendure `UpdateCustomerInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $UpdateCustomerInput {
  Map<String, dynamic>? get customFields;
  String? get firstName;
  String? get lastName;
  String? get phoneNumber;
  String? get title;
}
