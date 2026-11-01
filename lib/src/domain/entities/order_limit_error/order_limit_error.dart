import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'order_limit_error.zorphy.dart';
part 'order_limit_error.g.dart';

/// Vendure `OrderLimitError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderLimitError {
  ErrorCode get errorCode;
  int get maxItems;
  String get message;
}
