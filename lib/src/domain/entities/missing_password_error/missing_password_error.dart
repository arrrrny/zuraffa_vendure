import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'missing_password_error.zorphy.dart';
part 'missing_password_error.g.dart';

/// Vendure `MissingPasswordError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $MissingPasswordError {
  ErrorCode get errorCode;
  String get message;
}
