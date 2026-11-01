import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'tag.zorphy.dart';
part 'tag.g.dart';

/// Vendure `Tag` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Tag {
  DateTime get createdAt;
  String get id;
  DateTime get updatedAt;
  String get value;
}
