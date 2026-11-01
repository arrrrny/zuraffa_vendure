import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../enums/sort_order.dart';

part 'customer_sort_parameter.zorphy.dart';
part 'customer_sort_parameter.g.dart';

/// Vendure `CustomerSortParameter` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CustomerSortParameter {
  SortOrder? get createdAt;
  SortOrder? get emailAddress;
  SortOrder? get firstName;
  SortOrder? get id;
  SortOrder? get lastName;
  SortOrder? get phoneNumber;
  SortOrder? get title;
  SortOrder? get updatedAt;
}
