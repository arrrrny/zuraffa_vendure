import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../product/product.dart';

part 'product_list.zorphy.dart';
part 'product_list.g.dart';

/// Vendure `ProductList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductList {
  List<Product> get items;
  int get totalItems;
}
