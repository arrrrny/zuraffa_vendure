import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../refund_line/refund_line.dart';

part 'refund.zorphy.dart';
part 'refund.g.dart';

/// Vendure `Refund` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Refund {
  double get adjustment;
  DateTime get createdAt;
  String get id;
  double get items;
  List<RefundLine> get lines;
  Map<String, dynamic>? get metadata;
  String? get method;
  String get paymentId;
  String? get reason;
  double get shipping;
  String get state;
  double get total;
  String? get transactionId;
  DateTime get updatedAt;
}
