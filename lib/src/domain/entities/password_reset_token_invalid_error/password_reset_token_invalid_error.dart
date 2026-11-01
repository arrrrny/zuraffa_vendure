import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'password_reset_token_invalid_error.zorphy.dart';
part 'password_reset_token_invalid_error.g.dart';

/// Vendure `PasswordResetTokenInvalidError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PasswordResetTokenInvalidError {
  ErrorCode get errorCode;
  String get message;
}
