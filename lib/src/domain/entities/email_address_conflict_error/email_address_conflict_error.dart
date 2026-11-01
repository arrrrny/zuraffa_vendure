import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'email_address_conflict_error.zorphy.dart';
part 'email_address_conflict_error.g.dart';

/// Vendure `EmailAddressConflictError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $EmailAddressConflictError {
  ErrorCode get errorCode;
  String get message;
}
