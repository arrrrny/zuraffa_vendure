import 'package:zorphy_annotation/zorphy_annotation.dart';

part 'collection_breadcrumb.zorphy.dart';
part 'collection_breadcrumb.g.dart';

/// Vendure `CollectionBreadcrumb` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $CollectionBreadcrumb {
  String get id;
  String get name;
  String get slug;
}
