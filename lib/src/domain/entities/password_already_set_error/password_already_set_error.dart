import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'password_already_set_error.zorphy.dart';
part 'password_already_set_error.g.dart';

/// Vendure `PasswordAlreadySetError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PasswordAlreadySetError {
  ErrorCode get errorCode;
  String get message;
}
