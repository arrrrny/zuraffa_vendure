import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class ResetPasswordParams {
  final String token;
  final String password;

  const ResetPasswordParams({required this.token, required this.password});
}

class ResetPasswordUseCase
    extends UseCase<ResetPasswordResult, ResetPasswordParams> {
  final AuthRepository _repository;

  ResetPasswordUseCase(this._repository);

  @override
  Future<ResetPasswordResult> execute(
    ResetPasswordParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.resetPassword(
      token: params.token,
      password: params.password,
    );
  }
}
