import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../order/order.dart';

part 'order_list.zorphy.dart';
part 'order_list.g.dart';

/// Vendure `OrderList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderList {
  List<Order> get items;
  int get totalItems;
}
