import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../fulfillment_line/fulfillment_line.dart';

part 'fulfillment.zorphy.dart';
part 'fulfillment.g.dart';

/// Vendure `Fulfillment` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Fulfillment {
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get id;
  List<FulfillmentLine> get lines;
  String get method;
  String get state;
  List<FulfillmentLine> get summary;
  String? get trackingCode;
  DateTime get updatedAt;
}
