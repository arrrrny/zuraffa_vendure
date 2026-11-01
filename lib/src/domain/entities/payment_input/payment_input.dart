import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'payment_input.zorphy.dart';
part 'payment_input.g.dart';

/// Vendure `PaymentInput` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PaymentInput {
  Map<String, dynamic> get metadata;
  String get method;
}
