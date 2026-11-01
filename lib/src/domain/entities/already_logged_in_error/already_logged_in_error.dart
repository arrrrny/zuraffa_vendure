import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'already_logged_in_error.zorphy.dart';
part 'already_logged_in_error.g.dart';

/// Vendure `AlreadyLoggedInError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $AlreadyLoggedInError {
  ErrorCode get errorCode;
  String get message;
}
