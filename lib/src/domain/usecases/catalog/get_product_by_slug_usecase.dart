// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/catalog_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetProductBySlugParams {
  final String slug;
  const GetProductBySlugParams({required this.slug});
}

class GetProductBySlugUseCase extends UseCase<Product, GetProductBySlugParams> {
  final CatalogRepository _repository;
  GetProductBySlugUseCase(this._repository);

  @override
  @override
  Future<Product> execute(
    GetProductBySlugParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.getProductBySlug(slug: params.slug);
  }
}
