import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class AuthenticateParams {
  final String username;
  final String password;

  const AuthenticateParams({required this.username, required this.password});
}

class AuthenticateUseCase
    extends UseCase<AuthenticationResult, AuthenticateParams> {
  final AuthRepository _repository;

  AuthenticateUseCase(this._repository);

  @override
  Future<AuthenticationResult> execute(
    AuthenticateParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.authenticate(
      username: params.username,
      password: params.password,
    );
  }
}
