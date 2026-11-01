import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'no_active_order_error.zorphy.dart';
part 'no_active_order_error.g.dart';

/// Vendure `NoActiveOrderError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NoActiveOrderError {
  ErrorCode get errorCode;
  String get message;
}
