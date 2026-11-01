import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../country/country.dart';

part 'country_list.zorphy.dart';
part 'country_list.g.dart';

/// Vendure `CountryList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CountryList {
  List<Country> get items;
  int get totalItems;
}
