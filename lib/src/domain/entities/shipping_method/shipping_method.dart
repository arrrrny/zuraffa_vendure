import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../configurable_operation/configurable_operation.dart';
import '../enums/language_code.dart';
import '../shipping_method_translation/shipping_method_translation.dart';

part 'shipping_method.zorphy.dart';
part 'shipping_method.g.dart';

/// Vendure `ShippingMethod` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ShippingMethod {
  ConfigurableOperation get calculator;
  ConfigurableOperation get checker;
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get description;
  String get fulfillmentHandlerCode;
  String get id;
  LanguageCode get languageCode;
  String get name;
  List<ShippingMethodTranslation> get translations;
  DateTime get updatedAt;
}
