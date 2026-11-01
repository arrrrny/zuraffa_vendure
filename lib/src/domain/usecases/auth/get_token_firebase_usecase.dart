import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

/// FLAG: Vendure-specific — extracts token from response header.
class GetTokenFirebaseParams {
  final String uid;
  final String jwt;
  final String tokenName;

  const GetTokenFirebaseParams({
    required this.uid,
    required this.jwt,
    this.tokenName = 'vendure-auth-token',
  });
}

class GetTokenFirebaseUseCase extends UseCase<String?, GetTokenFirebaseParams> {
  final AuthRepository _repository;

  GetTokenFirebaseUseCase(this._repository);

  @override
  Future<String?> execute(
    GetTokenFirebaseParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.getTokenFirebase(
      uid: params.uid,
      jwt: params.jwt,
      tokenName: params.tokenName,
    );
  }
}
