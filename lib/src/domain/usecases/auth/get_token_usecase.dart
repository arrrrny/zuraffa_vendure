import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

/// FLAG: Vendure-specific — extracts token from response header.
class GetTokenParams {
  final String username;
  final String password;
  final String tokenName;

  const GetTokenParams({
    required this.username,
    required this.password,
    this.tokenName = 'vendure-auth-token',
  });
}

class GetTokenUseCase extends UseCase<String?, GetTokenParams> {
  final AuthRepository _repository;

  GetTokenUseCase(this._repository);

  @override
  Future<String?> execute(GetTokenParams params, CancelToken? cancelToken) {
    return _repository.getToken(
      username: params.username,
      password: params.password,
      tokenName: params.tokenName,
    );
  }
}
