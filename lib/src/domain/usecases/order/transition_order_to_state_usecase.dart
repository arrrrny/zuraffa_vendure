// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/order_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class TransitionOrderToStateParams {
  final String state;
  const TransitionOrderToStateParams({required this.state});
}

class TransitionOrderToStateUseCase
    extends
        UseCase<TransitionOrderToStateResult, TransitionOrderToStateParams> {
  final OrderRepository _repository;
  TransitionOrderToStateUseCase(this._repository);

  @override
  @override
  Future<TransitionOrderToStateResult> execute(
    TransitionOrderToStateParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.transitionOrderToState(state: params.state);
  }
}
