import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'payment_method_quote.zorphy.dart';
part 'payment_method_quote.g.dart';

/// Vendure `PaymentMethodQuote` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PaymentMethodQuote {
  String get code;
  Map<String, dynamic>? get customFields;
  String get description;
  String? get eligibilityMessage;
  String get id;
  bool get isEligible;
  String get name;
}
