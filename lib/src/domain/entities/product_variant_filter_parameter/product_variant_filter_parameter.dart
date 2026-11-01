import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../date_operators/date_operators.dart';
import '../id_operators/id_operators.dart';
import '../number_operators/number_operators.dart';
import '../string_operators/string_operators.dart';

part 'product_variant_filter_parameter.zorphy.dart';
part 'product_variant_filter_parameter.g.dart';

/// Vendure `ProductVariantFilterParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $ProductVariantFilterParameter {
  List<ProductVariantFilterParameter>? get and;
  List<ProductVariantFilterParameter>? get or;
  DateOperators? get createdAt;
  StringOperators? get currencyCode;
  IdOperators? get id;
  StringOperators? get languageCode;
  StringOperators? get name;
  NumberOperators? get price;
  NumberOperators? get priceWithTax;
  IdOperators? get productId;
  StringOperators? get sku;
  StringOperators? get stockLevel;
  DateOperators? get updatedAt;
}
