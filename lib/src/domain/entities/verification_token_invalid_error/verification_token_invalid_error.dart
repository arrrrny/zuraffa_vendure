import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'verification_token_invalid_error.zorphy.dart';
part 'verification_token_invalid_error.g.dart';

/// Vendure `VerificationTokenInvalidError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $VerificationTokenInvalidError {
  ErrorCode get errorCode;
  String get message;
}
