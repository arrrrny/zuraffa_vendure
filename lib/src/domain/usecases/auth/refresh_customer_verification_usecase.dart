import '../../../domain/repositories/auth_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../../entities/exports.dart';

class RefreshCustomerVerificationParams {
  final String emailAddress;

  const RefreshCustomerVerificationParams({required this.emailAddress});
}

class RefreshCustomerVerificationUseCase
    extends
        UseCase<
          RefreshCustomerVerificationResult,
          RefreshCustomerVerificationParams
        > {
  final AuthRepository _repository;

  RefreshCustomerVerificationUseCase(this._repository);

  @override
  Future<RefreshCustomerVerificationResult> execute(
    RefreshCustomerVerificationParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.refreshCustomerVerification(
      emailAddress: params.emailAddress,
    );
  }
}
