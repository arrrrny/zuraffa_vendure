import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../discount/discount.dart';
import '../shipping_method/shipping_method.dart';

part 'shipping_line.zorphy.dart';
part 'shipping_line.g.dart';

/// Vendure `ShippingLine` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ShippingLine {
  double get discountedPrice;
  double get discountedPriceWithTax;
  List<Discount> get discounts;
  String get id;
  double get price;
  double get priceWithTax;
  ShippingMethod get shippingMethod;
}
