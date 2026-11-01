import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'refund_line.zorphy.dart';
part 'refund_line.g.dart';

/// Vendure `RefundLine` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $RefundLine {
  String get orderLineId;
  int get quantity;
  String get refundId;
}
