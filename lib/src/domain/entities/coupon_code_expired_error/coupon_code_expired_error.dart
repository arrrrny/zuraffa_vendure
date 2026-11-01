import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'coupon_code_expired_error.zorphy.dart';
part 'coupon_code_expired_error.g.dart';

/// Vendure `CouponCodeExpiredError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CouponCodeExpiredError {
  String get couponCode;
  ErrorCode get errorCode;
  String get message;
}
