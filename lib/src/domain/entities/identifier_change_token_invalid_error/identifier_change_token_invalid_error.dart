import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'identifier_change_token_invalid_error.zorphy.dart';
part 'identifier_change_token_invalid_error.g.dart';

/// Vendure `IdentifierChangeTokenInvalidError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $IdentifierChangeTokenInvalidError {
  ErrorCode get errorCode;
  String get message;
}
