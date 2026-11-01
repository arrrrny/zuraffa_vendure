// Scaffolded by zfa — Vendure-specific params (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/order_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetActiveOrderUseCase extends UseCase<Order?, NoParams> {
  final OrderRepository _repository;
  GetActiveOrderUseCase(this._repository);

  @override
  @override
  Future<Order?> execute(NoParams params, CancelToken? cancelToken) {
    return _repository.getActiveOrder();
  }
}
