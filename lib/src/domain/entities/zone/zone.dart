import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'zone.zorphy.dart';
part 'zone.g.dart';

/// Vendure `Zone` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Zone {
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get id;
  String get name;
  DateTime get updatedAt;
}
