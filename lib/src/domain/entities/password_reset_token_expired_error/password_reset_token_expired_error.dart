import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'password_reset_token_expired_error.zorphy.dart';
part 'password_reset_token_expired_error.g.dart';

/// Vendure `PasswordResetTokenExpiredError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PasswordResetTokenExpiredError {
  ErrorCode get errorCode;
  String get message;
}
