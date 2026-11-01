// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/order_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class GetOrderByCodeParams {
  final String code;
  const GetOrderByCodeParams({required this.code});
}

class GetOrderByCodeUseCase extends UseCase<Order, GetOrderByCodeParams> {
  final OrderRepository _repository;
  GetOrderByCodeUseCase(this._repository);

  @override
  @override
  Future<Order> execute(GetOrderByCodeParams params, CancelToken? cancelToken) {
    return _repository.getOrderByCode(code: params.code);
  }
}
