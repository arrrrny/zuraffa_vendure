import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class AuthenticateFirebaseParams {
  final String uid;
  final String jwt;

  const AuthenticateFirebaseParams({required this.uid, required this.jwt});
}

class AuthenticateFirebaseUseCase
    extends UseCase<AuthenticationResult, AuthenticateFirebaseParams> {
  final AuthRepository _repository;

  AuthenticateFirebaseUseCase(this._repository);

  @override
  Future<AuthenticationResult> execute(
    AuthenticateFirebaseParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.authenticateFirebase(uid: params.uid, jwt: params.jwt);
  }
}
