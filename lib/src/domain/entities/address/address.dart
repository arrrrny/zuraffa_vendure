import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../country/country.dart';

part 'address.zorphy.dart';
part 'address.g.dart';

/// Vendure `Address` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Address {
  String? get city;
  String? get company;
  Country get country;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  bool? get defaultBillingAddress;
  bool? get defaultShippingAddress;
  String? get fullName;
  String get id;
  String? get phoneNumber;
  String? get postalCode;
  String? get province;
  String get streetLine1;
  String? get streetLine2;
  DateTime get updatedAt;
}
