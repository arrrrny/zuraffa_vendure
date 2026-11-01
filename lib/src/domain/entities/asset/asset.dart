import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/asset_type.dart';
import '../coordinate/coordinate.dart';
import '../tag/tag.dart';

part 'asset.zorphy.dart';
part 'asset.g.dart';

/// Vendure `Asset` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Asset {
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  int get fileSize;
  Coordinate? get focalPoint;
  int get height;
  String get id;
  String get mimeType;
  String get name;
  String get preview;
  String get source;
  List<Tag> get tags;
  AssetType get type;
  DateTime get updatedAt;
  int get width;
}
