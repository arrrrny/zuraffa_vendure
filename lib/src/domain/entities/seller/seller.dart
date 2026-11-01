import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'seller.zorphy.dart';
part 'seller.g.dart';

/// Vendure `Seller` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Seller {
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get id;
  String get name;
  DateTime get updatedAt;
}
