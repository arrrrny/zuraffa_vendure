// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/system_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetFacetsParams {
  final FacetListOptions? options;
  const GetFacetsParams({this.options});
}

class GetFacetsUseCase extends UseCase<FacetList, GetFacetsParams> {
  final SystemRepository _repository;
  GetFacetsUseCase(this._repository);

  @override
  @override
  Future<FacetList> execute(GetFacetsParams params, CancelToken? cancelToken) {
    return _repository.getFacets(options: params.options);
  }
}
