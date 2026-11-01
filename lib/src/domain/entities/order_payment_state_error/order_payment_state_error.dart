import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'order_payment_state_error.zorphy.dart';
part 'order_payment_state_error.g.dart';

/// Vendure `OrderPaymentStateError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderPaymentStateError {
  ErrorCode get errorCode;
  String get message;
}
