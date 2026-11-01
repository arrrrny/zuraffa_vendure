import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class VerifyCustomerAccountParams {
  final String token;
  final String? password;

  const VerifyCustomerAccountParams({required this.token, this.password});
}

class VerifyCustomerAccountUseCase
    extends UseCase<VerifyCustomerAccountResult, VerifyCustomerAccountParams> {
  final AuthRepository _repository;

  VerifyCustomerAccountUseCase(this._repository);

  @override
  Future<VerifyCustomerAccountResult> execute(
    VerifyCustomerAccountParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.verifyCustomerAccount(
      token: params.token,
      password: params.password,
    );
  }
}
