import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/currency_code.dart';
import '../customer/customer.dart';
import '../discount/discount.dart';
import '../fulfillment/fulfillment.dart';
import '../history_entry_list/history_entry_list.dart';
import '../order_address/order_address.dart';
import '../order_line/order_line.dart';
import '../order_tax_summary/order_tax_summary.dart';
import '../enums/order_type.dart';
import '../payment/payment.dart';
import '../promotion/promotion.dart';
import '../shipping_line/shipping_line.dart';
import '../surcharge/surcharge.dart';

part 'order.zorphy.dart';
part 'order.g.dart';

/// Vendure `Order` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Order {
  bool get active;
  OrderAddress? get billingAddress;
  String get code;
  List<String> get couponCodes;
  DateTime get createdAt;
  CurrencyCode get currencyCode;
  Map<String, dynamic>? get customFields;
  Customer? get customer;
  List<Discount> get discounts;
  List<Fulfillment>? get fulfillments;
  HistoryEntryList get history;
  String get id;
  List<OrderLine> get lines;
  DateTime? get orderPlacedAt;
  List<Payment>? get payments;
  List<Promotion> get promotions;
  double get shipping;
  OrderAddress? get shippingAddress;
  List<ShippingLine> get shippingLines;
  double get shippingWithTax;
  String get state;
  double get subTotal;
  double get subTotalWithTax;
  List<Surcharge> get surcharges;
  List<OrderTaxSummary> get taxSummary;
  double get total;
  int get totalQuantity;
  double get totalWithTax;
  OrderType get type;
  DateTime get updatedAt;
}
