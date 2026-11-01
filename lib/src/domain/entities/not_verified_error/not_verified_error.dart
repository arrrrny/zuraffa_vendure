import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'not_verified_error.zorphy.dart';
part 'not_verified_error.g.dart';

/// Vendure `NotVerifiedError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NotVerifiedError {
  ErrorCode get errorCode;
  String get message;
}
