import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../customer_list/customer_list.dart';

part 'customer_group.zorphy.dart';
part 'customer_group.g.dart';

/// Vendure `CustomerGroup` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CustomerGroup {
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  CustomerList get customers;
  String get id;
  String get name;
  DateTime get updatedAt;
}
