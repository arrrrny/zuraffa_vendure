// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/catalog_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class SearchCatalogParams {
  final SearchInput input;
  const SearchCatalogParams({required this.input});
}

class SearchCatalogUseCase
    extends UseCase<SearchResponse, SearchCatalogParams> {
  final CatalogRepository _repository;
  SearchCatalogUseCase(this._repository);

  @override
  @override
  Future<SearchResponse> execute(
    SearchCatalogParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.searchCatalog(input: params.input);
  }
}
