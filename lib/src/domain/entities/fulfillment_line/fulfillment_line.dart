import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../fulfillment/fulfillment.dart';
import '../order_line/order_line.dart';

part 'fulfillment_line.zorphy.dart';
part 'fulfillment_line.g.dart';

/// Vendure `FulfillmentLine` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $FulfillmentLine {
  Fulfillment get fulfillment;
  String get fulfillmentId;
  OrderLine get orderLine;
  String get orderLineId;
  int get quantity;
}
