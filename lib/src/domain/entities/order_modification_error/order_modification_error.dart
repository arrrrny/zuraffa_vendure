import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'order_modification_error.zorphy.dart';
part 'order_modification_error.g.dart';

/// Vendure `OrderModificationError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderModificationError {
  ErrorCode get errorCode;
  String get message;
}
