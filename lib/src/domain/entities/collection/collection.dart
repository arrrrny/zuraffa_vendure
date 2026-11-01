import 'package:zorphy_annotation/zorphy_annotation.dart';

import '../asset/asset.dart';
import '../collection_breadcrumb/collection_breadcrumb.dart';
import '../collection_translation/collection_translation.dart';
import '../configurable_operation/configurable_operation.dart';
import '../enums/language_code.dart';
import '../product_variant_list/product_variant_list.dart';

part 'collection.zorphy.dart';
part 'collection.g.dart';

/// Vendure `Collection` entity — zorphy-generated from the schema
/// manifest (spec 001, entity-manifest.json).
@Zorphy(generateJson: true)
abstract class $Collection {
  List<Asset> get assets;
  List<CollectionBreadcrumb> get breadcrumbs;
  List<Collection>? get children;
  DateTime get createdAt;
  Map<String, dynamic>? get customFields;
  String get description;
  Asset? get featuredAsset;
  List<ConfigurableOperation> get filters;
  String get id;
  LanguageCode? get languageCode;
  String get name;
  Collection? get parent;
  String? get parentId;
  int get position;
  ProductVariantList? get productVariants;
  String get slug;
  List<CollectionTranslation> get translations;
  DateTime get updatedAt;
}
