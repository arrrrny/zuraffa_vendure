import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'invalid_credentials_error.zorphy.dart';
part 'invalid_credentials_error.g.dart';

/// Vendure `InvalidCredentialsError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $InvalidCredentialsError {
  String get authenticationError;
  ErrorCode get errorCode;
  String get message;
}
