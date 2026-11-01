import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'guest_checkout_error.zorphy.dart';
part 'guest_checkout_error.g.dart';

/// Vendure `GuestCheckoutError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $GuestCheckoutError {
  ErrorCode get errorCode;
  String get errorDetail;
  String get message;
}
