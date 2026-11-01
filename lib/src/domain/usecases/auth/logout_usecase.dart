import '../../../domain/repositories/auth_repository.dart';
import '../../entities/exports.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class LogoutUseCase extends UseCase<Success, NoParams> {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Success> execute(NoParams params, CancelToken? cancelToken) {
    return _repository.logout();
  }
}
