import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'payment_failed_error.zorphy.dart';
part 'payment_failed_error.g.dart';

/// Vendure `PaymentFailedError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PaymentFailedError {
  ErrorCode get errorCode;
  String get message;
  String get paymentErrorMessage;
}
