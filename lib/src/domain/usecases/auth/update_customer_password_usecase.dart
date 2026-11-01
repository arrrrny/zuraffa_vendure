import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class UpdateCustomerPasswordParams {
  final String currentPassword;
  final String newPassword;

  const UpdateCustomerPasswordParams({
    required this.currentPassword,
    required this.newPassword,
  });
}

class UpdateCustomerPasswordUseCase
    extends
        UseCase<UpdateCustomerPasswordResult, UpdateCustomerPasswordParams> {
  final AuthRepository _repository;

  UpdateCustomerPasswordUseCase(this._repository);

  @override
  Future<UpdateCustomerPasswordResult> execute(
    UpdateCustomerPasswordParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.updateCustomerPassword(
      currentPassword: params.currentPassword,
      newPassword: params.newPassword,
    );
  }
}
