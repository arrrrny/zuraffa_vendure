import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'create_address_input.zorphy.dart';
part 'create_address_input.g.dart';

/// Vendure `CreateAddressInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CreateAddressInput {
  String? get city;
  String? get company;
  String get countryCode;
  Map<String, dynamic>? get customFields;
  bool? get defaultBillingAddress;
  bool? get defaultShippingAddress;
  String? get fullName;
  String? get phoneNumber;
  String? get postalCode;
  String? get province;
  String get streetLine1;
  String? get streetLine2;
}
