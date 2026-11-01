import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class RequestPasswordResetParams {
  final String emailAddress;

  const RequestPasswordResetParams({required this.emailAddress});
}

class RequestPasswordResetUseCase
    extends UseCase<RequestPasswordResetResult, RequestPasswordResetParams> {
  final AuthRepository _repository;

  RequestPasswordResetUseCase(this._repository);

  @override
  Future<RequestPasswordResetResult> execute(
    RequestPasswordResetParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.requestPasswordReset(emailAddress: params.emailAddress);
  }
}
