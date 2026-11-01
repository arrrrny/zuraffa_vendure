import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'coupon_code_limit_error.zorphy.dart';
part 'coupon_code_limit_error.g.dart';

/// Vendure `CouponCodeLimitError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CouponCodeLimitError {
  String get couponCode;
  ErrorCode get errorCode;
  int get limit;
  String get message;
}
