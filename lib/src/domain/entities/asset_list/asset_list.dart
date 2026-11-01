import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../asset/asset.dart';

part 'asset_list.zorphy.dart';
part 'asset_list.g.dart';

/// Vendure `AssetList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $AssetList {
  List<Asset> get items;
  int get totalItems;
}
