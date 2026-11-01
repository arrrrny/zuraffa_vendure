// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/customer_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class UpdateCustomerParams {
  final UpdateCustomerInput input;
  const UpdateCustomerParams({required this.input});
}

class UpdateCustomerUseCase extends UseCase<Customer, UpdateCustomerParams> {
  final CustomerRepository _repository;
  UpdateCustomerUseCase(this._repository);

  @override
  @override
  Future<Customer> execute(
    UpdateCustomerParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.updateCustomer(input: params.input);
  }
}
