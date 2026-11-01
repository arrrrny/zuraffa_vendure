import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../address/address.dart';
import '../order_list/order_list.dart';
import '../user/user.dart';

part 'customer.zorphy.dart';
part 'customer.g.dart';

/// Vendure `Customer` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Customer {
  List<Address>? get addresses;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get emailAddress;
  String get firstName;
  String get id;
  String get lastName;
  OrderList? get orders;
  String? get phoneNumber;
  String? get title;
  DateTime get updatedAt;
  User? get user;
}
