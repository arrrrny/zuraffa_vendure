import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'shipping_method_quote.zorphy.dart';
part 'shipping_method_quote.g.dart';

/// Vendure `ShippingMethodQuote` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ShippingMethodQuote {
  String get code;
  Map<String, dynamic>? get customFields;
  String get description;
  String get id;
  Map<String, dynamic>? get metadata;
  String get name;
  double get price;
  double get priceWithTax;
}
