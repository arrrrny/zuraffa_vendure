import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../shipping_method/shipping_method.dart';

part 'shipping_method_list.zorphy.dart';
part 'shipping_method_list.g.dart';

/// Vendure `ShippingMethodList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ShippingMethodList {
  List<ShippingMethod> get items;
  int get totalItems;
}
