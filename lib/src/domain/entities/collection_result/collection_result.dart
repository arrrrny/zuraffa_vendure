import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../collection/collection.dart';

part 'collection_result.zorphy.dart';
part 'collection_result.g.dart';

/// Vendure `CollectionResult` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CollectionResult {
  Collection get collection;
  int get count;
}
