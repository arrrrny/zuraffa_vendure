import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../configurable_operation/configurable_operation.dart';
import '../payment_method_translation/payment_method_translation.dart';

part 'payment_method.zorphy.dart';
part 'payment_method.g.dart';

/// Vendure `PaymentMethod` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PaymentMethod {
  ConfigurableOperation? get checker;
  String get code;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get description;
  bool get enabled;
  ConfigurableOperation get handler;
  String get id;
  String get name;
  List<PaymentMethodTranslation> get translations;
  DateTime get updatedAt;
}
