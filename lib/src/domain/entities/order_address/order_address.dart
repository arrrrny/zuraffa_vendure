import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'order_address.zorphy.dart';
part 'order_address.g.dart';

/// Vendure `OrderAddress` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderAddress {
  String? get city;
  String? get company;
  String? get country;
  String? get countryCode;
  Map<String, dynamic>? get customFields;
  String? get fullName;
  String? get phoneNumber;
  String? get postalCode;
  String? get province;
  String? get streetLine1;
  String? get streetLine2;
}
