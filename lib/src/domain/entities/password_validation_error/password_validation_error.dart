import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'password_validation_error.zorphy.dart';
part 'password_validation_error.g.dart';

/// Vendure `PasswordValidationError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PasswordValidationError {
  ErrorCode get errorCode;
  String get message;
  String get validationErrorMessage;
}
