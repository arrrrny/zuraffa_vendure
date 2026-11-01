import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../promotion/promotion.dart';

part 'promotion_list.zorphy.dart';
part 'promotion_list.g.dart';

/// Vendure `PromotionList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $PromotionList {
  List<Promotion> get items;
  int get totalItems;
}
