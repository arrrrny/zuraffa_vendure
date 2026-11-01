import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'ineligible_payment_method_error.zorphy.dart';
part 'ineligible_payment_method_error.g.dart';

/// Vendure `IneligiblePaymentMethodError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $IneligiblePaymentMethodError {
  String? get eligibilityCheckerMessage;
  ErrorCode get errorCode;
  String get message;
}
