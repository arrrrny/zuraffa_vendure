import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';
import '../order/order.dart';

part 'insufficient_stock_error.zorphy.dart';
part 'insufficient_stock_error.g.dart';

/// Vendure `InsufficientStockError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $InsufficientStockError {
  ErrorCode get errorCode;
  String get message;
  Order get order;
  int get quantityAvailable;
}
