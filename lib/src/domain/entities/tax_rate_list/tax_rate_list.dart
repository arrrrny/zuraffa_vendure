import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../tax_rate/tax_rate.dart';

part 'tax_rate_list.zorphy.dart';
part 'tax_rate_list.g.dart';

/// Vendure `TaxRateList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $TaxRateList {
  List<TaxRate> get items;
  int get totalItems;
}
