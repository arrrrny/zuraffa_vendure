import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class RequestUpdateCustomerEmailAddressParams {
  final String password;
  final String newEmailAddress;

  const RequestUpdateCustomerEmailAddressParams({
    required this.password,
    required this.newEmailAddress,
  });
}

class RequestUpdateCustomerEmailAddressUseCase
    extends
        UseCase<
          RequestUpdateCustomerEmailAddressResult,
          RequestUpdateCustomerEmailAddressParams
        > {
  final AuthRepository _repository;

  RequestUpdateCustomerEmailAddressUseCase(this._repository);

  @override
  Future<RequestUpdateCustomerEmailAddressResult> execute(
    RequestUpdateCustomerEmailAddressParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.requestUpdateCustomerEmailAddress(
      password: params.password,
      newEmailAddress: params.newEmailAddress,
    );
  }
}
