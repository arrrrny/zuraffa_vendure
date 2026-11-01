import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../customer/customer.dart';

part 'customer_list.zorphy.dart';
part 'customer_list.g.dart';

/// Vendure `CustomerList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CustomerList {
  List<Customer> get items;
  int get totalItems;
}
