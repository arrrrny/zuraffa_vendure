import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../refund/refund.dart';

part 'payment.zorphy.dart';
part 'payment.g.dart';

/// Vendure `Payment` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Payment {
  double get amount;
  DateTime get createdAt;
  String? get errorMessage;
  String get id;
  Map<String, dynamic>? get metadata;
  String get method;
  List<Refund> get refunds;
  String get state;
  String? get transactionId;
  DateTime get updatedAt;
}
