import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'native_auth_strategy_error.zorphy.dart';
part 'native_auth_strategy_error.g.dart';

/// Vendure `NativeAuthStrategyError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NativeAuthStrategyError {
  ErrorCode get errorCode;
  String get message;
}
