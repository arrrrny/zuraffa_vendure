import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'order_sort_parameter.zorphy.dart';
part 'order_sort_parameter.g.dart';

/// Vendure `OrderSortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $OrderSortParameter {
  SortOrder? get code;
  SortOrder? get createdAt;
  SortOrder? get id;
  SortOrder? get orderPlacedAt;
  SortOrder? get shipping;
  SortOrder? get shippingWithTax;
  SortOrder? get state;
  SortOrder? get subTotal;
  SortOrder? get subTotalWithTax;
  SortOrder? get total;
  SortOrder? get totalQuantity;
  SortOrder? get totalWithTax;
  SortOrder? get updatedAt;
}
