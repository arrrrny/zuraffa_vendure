// Scaffolded by zfa — Vendure-specific params (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/catalog_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetProductsParams {
  final ProductListOptions? options;
  const GetProductsParams({this.options});
}

class GetProductsUseCase extends UseCase<ProductList, GetProductsParams> {
  final CatalogRepository _repository;
  GetProductsUseCase(this._repository);

  @override
  @override
  Future<ProductList> execute(
    GetProductsParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.getProducts(options: params.options);
  }
}
