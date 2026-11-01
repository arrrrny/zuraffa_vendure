import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class LoginParams {
  final String username;
  final String password;
  final bool? rememberMe;

  const LoginParams({
    required this.username,
    required this.password,
    this.rememberMe,
  });
}

class LoginUseCase extends UseCase<NativeAuthenticationResult, LoginParams> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<NativeAuthenticationResult> execute(
    LoginParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.login(
      username: params.username,
      password: params.password,
      rememberMe: params.rememberMe,
    );
  }
}
