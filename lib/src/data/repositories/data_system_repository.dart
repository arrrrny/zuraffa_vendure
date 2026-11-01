// Vendure-specific repository implementation (T035)
// Delegates to [VendureDataSource] with per-method GraphQL docs,
// variables, fromJson, and expectedDataType.

import '../../domain/datasources/vendure_datasource.dart';
import '../../domain/repositories/system_repository.dart';

import 'package:vendure/src/queries/get_available_countries_query.dart';
import 'package:vendure/src/queries/get_facet_query.dart';
import 'package:vendure/src/queries/get_facets_query.dart';

import '../../domain/entities/exports.dart';

class DataSystemRepository implements SystemRepository {
  final VendureDataSource _dataSource;

  DataSystemRepository({required this._dataSource});

  @override
  Future<List<Country>> getAvailableCountries() {
    return _dataSource.queryList<Country>(
      getAvailableCountriesQuery,
      variables: {},
      headers: const {},
      fromJson: Country.fromJson,
      expectedDataType: 'availableCountries',
    );
  }

  @override
  Future<FacetList> getFacets({FacetListOptions? options}) {
    return _dataSource.query<FacetList>(
      getFacetsQuery,
      variables: {"options": options?.toJson()},
      headers: const {},
      fromJson: FacetList.fromJson,
      expectedDataType: 'facets',
    );
  }

  @override
  Future<Facet> getFacet({required String id}) {
    return _dataSource.query<Facet>(
      getFacetQuery,
      variables: {'id': id},
      headers: const {},
      fromJson: Facet.fromJson,
      expectedDataType: 'facet',
    );
  }
}
