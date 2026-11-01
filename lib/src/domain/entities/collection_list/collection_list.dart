import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../collection/collection.dart';

part 'collection_list.zorphy.dart';
part 'collection_list.g.dart';

/// Vendure `CollectionList` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CollectionList {
  List<Collection> get items;
  int get totalItems;
}
