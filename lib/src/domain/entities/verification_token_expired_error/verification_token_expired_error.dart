import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'verification_token_expired_error.zorphy.dart';
part 'verification_token_expired_error.g.dart';

/// Vendure `VerificationTokenExpiredError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $VerificationTokenExpiredError {
  ErrorCode get errorCode;
  String get message;
}
