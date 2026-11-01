import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../coordinate/coordinate.dart';

part 'search_result_asset.zorphy.dart';
part 'search_result_asset.g.dart';

/// Vendure `SearchResultAsset` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $SearchResultAsset {
  Coordinate? get focalPoint;
  String get id;
  String get preview;
}
