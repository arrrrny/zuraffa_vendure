// Scaffolded by zfa — Vendure-specific params (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/customer_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetActiveCustomerUseCase extends UseCase<Customer?, NoParams> {
  final CustomerRepository _repository;
  GetActiveCustomerUseCase(this._repository);

  @override
  @override
  Future<Customer?> execute(NoParams params, CancelToken? cancelToken) {
    return _repository.getActiveCustomer();
  }
}
