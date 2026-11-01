import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'payment_declined_error.zorphy.dart';
part 'payment_declined_error.g.dart';

/// Vendure `PaymentDeclinedError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PaymentDeclinedError {
  ErrorCode get errorCode;
  String get message;
  String get paymentErrorMessage;
}
