// Scaffolded by zfa — Vendure-specific params (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/system_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetAvailableCountriesUseCase extends UseCase<List<Country>, NoParams> {
  final SystemRepository _repository;
  GetAvailableCountriesUseCase(this._repository);

  @override
  Future<List<Country>> execute(NoParams params, CancelToken? cancelToken) {
    return _repository.getAvailableCountries();
  }
}
