import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class UpdateCustomerEmailAddressParams {
  final String token;

  const UpdateCustomerEmailAddressParams({required this.token});
}

class UpdateCustomerEmailAddressUseCase
    extends
        UseCase<
          UpdateCustomerEmailAddressResult,
          UpdateCustomerEmailAddressParams
        > {
  final AuthRepository _repository;

  UpdateCustomerEmailAddressUseCase(this._repository);

  @override
  Future<UpdateCustomerEmailAddressResult> execute(
    UpdateCustomerEmailAddressParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.updateCustomerEmailAddress(token: params.token);
  }
}
