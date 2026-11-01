import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class RegisterCustomerAccountParams {
  final RegisterCustomerInput input;

  const RegisterCustomerAccountParams({required this.input});
}

class RegisterCustomerAccountUseCase
    extends
        UseCase<RegisterCustomerAccountResult, RegisterCustomerAccountParams> {
  final AuthRepository _repository;

  RegisterCustomerAccountUseCase(this._repository);

  @override
  Future<RegisterCustomerAccountResult> execute(
    RegisterCustomerAccountParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.registerCustomerAccount(input: params.input);
  }
}
