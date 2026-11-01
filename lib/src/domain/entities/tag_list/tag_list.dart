import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../tag/tag.dart';

part 'tag_list.zorphy.dart';
part 'tag_list.g.dart';

/// Vendure `TagList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $TagList {
  List<Tag> get items;
  int get totalItems;
}
