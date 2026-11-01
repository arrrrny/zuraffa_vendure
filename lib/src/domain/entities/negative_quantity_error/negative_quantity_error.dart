import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/error_code.dart';

part 'negative_quantity_error.zorphy.dart';
part 'negative_quantity_error.g.dart';

/// Vendure `NegativeQuantityError` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $NegativeQuantityError {
  ErrorCode get errorCode;
  String get message;
}
