// Vendure-specific repository implementation (T035)
// Delegates to [VendureDataSource] with per-method GraphQL docs,
// variables, fromJson, and expectedDataType.

import '../../domain/datasources/vendure_datasource.dart';
import '../../domain/repositories/catalog_repository.dart';

import 'package:vendure/src/queries/get_collections_query.dart';
import 'package:vendure/src/queries/get_product_by_id_query.dart';
import 'package:vendure/src/queries/get_product_by_slug_query.dart';
import 'package:vendure/src/queries/get_products_query.dart';
import 'package:vendure/src/queries/search_catalog_query.dart';

import '../../domain/entities/exports.dart';

class DataCatalogRepository implements CatalogRepository {
  final VendureDataSource _dataSource;

  DataCatalogRepository({required this._dataSource});

  @override
  Future<CollectionList> getCollections({CollectionListOptions? options}) {
    return _dataSource.query<CollectionList>(
      getCollectionsQuery,
      variables: {"options": options?.toJson()},
      headers: const {},
      fromJson: CollectionList.fromJson,
      expectedDataType: 'collections',
    );
  }

  @override
  Future<Collection> getCollectionById({required String id}) {
    return _dataSource.query<Collection>(
      getCollectionByIdQuery,
      variables: {'id': id},
      headers: const {},
      fromJson: Collection.fromJson,
      expectedDataType: 'collection',
    );
  }

  @override
  Future<Collection> getCollectionBySlug({required String slug}) {
    return _dataSource.query<Collection>(
      getCollectionBySlugQuery,
      variables: {'slug': slug},
      headers: const {},
      fromJson: Collection.fromJson,
      expectedDataType: 'collection',
    );
  }

  @override
  Future<ProductList> getProducts({ProductListOptions? options}) {
    return _dataSource.query<ProductList>(
      getProductsQuery,
      variables: {"options": options?.toJson()},
      headers: const {},
      fromJson: ProductList.fromJson,
      expectedDataType: 'products',
    );
  }

  @override
  Future<Product> getProductById({required String id}) {
    return _dataSource.query<Product>(
      getProductByIdQuery,
      variables: {'id': id},
      headers: const {},
      fromJson: Product.fromJson,
      expectedDataType: 'product',
    );
  }

  @override
  Future<Product> getProductBySlug({required String slug}) {
    return _dataSource.query<Product>(
      getProductBySlugQuery,
      variables: {'slug': slug},
      headers: const {},
      fromJson: Product.fromJson,
      expectedDataType: 'product',
    );
  }

  @override
  Future<SearchResponse> searchCatalog({required SearchInput input}) {
    return _dataSource.query<SearchResponse>(
      searchCatalogQuery,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: SearchResponse.fromJson,
      expectedDataType: 'search',
    );
  }

  @override
  Future<Collection> getCollectionWithParentChildren({required String id}) {
    return _dataSource.query<Collection>(
      getCollectionWithParentChildrenQuery,
      variables: {'id': id},
      headers: const {},
      fromJson: Collection.fromJson,
      expectedDataType: 'collection',
    );
  }

  @override
  Future<Collection> getCollectionWithParent({required String id}) {
    return _dataSource.query<Collection>(
      getCollectionWithParentQuery,
      variables: {'id': id},
      headers: const {},
      fromJson: Collection.fromJson,
      expectedDataType: 'collection',
    );
  }

  @override
  Future<Collection> getCollectionWithChildren({required String id}) {
    return _dataSource.query<Collection>(
      getCollectionWithChildrenQuery,
      variables: {'id': id},
      headers: const {},
      fromJson: Collection.fromJson,
      expectedDataType: 'collection',
    );
  }

  @override
  Future<CollectionList> getCollectionListWithParentChildren({
    CollectionListOptions? options,
  }) {
    return _dataSource.query<CollectionList>(
      getCollectionListWithParentChildrenQuery,
      variables: {"options": options?.toJson()},
      headers: const {},
      fromJson: CollectionList.fromJson,
      expectedDataType: 'collections',
    );
  }
}
