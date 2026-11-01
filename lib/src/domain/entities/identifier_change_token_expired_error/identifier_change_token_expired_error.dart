import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'identifier_change_token_expired_error.zorphy.dart';
part 'identifier_change_token_expired_error.g.dart';

/// Vendure `IdentifierChangeTokenExpiredError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $IdentifierChangeTokenExpiredError {
  ErrorCode get errorCode;
  String get message;
}
