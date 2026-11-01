import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../province/province.dart';

part 'province_list.zorphy.dart';
part 'province_list.g.dart';

/// Vendure `ProvinceList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProvinceList {
  List<Province> get items;
  int get totalItems;
}
