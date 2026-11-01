// Hand-written Vendure-specific params class (T036)
import '../../entities/exports.dart';
import '../../../domain/repositories/order_repository.dart';

import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

class AddItemToOrderParams {
  final String productVariantId;
  final int quantity;
  const AddItemToOrderParams({
    required this.productVariantId,
    required this.quantity,
  });
}

class AddItemToOrderUseCase
    extends UseCase<UpdateOrderItemsResult, AddItemToOrderParams> {
  final OrderRepository _repository;
  AddItemToOrderUseCase(this._repository);

  @override
  @override
  Future<UpdateOrderItemsResult> execute(
    AddItemToOrderParams params,
    CancelToken? cancelToken,
  ) {
    return _repository.addItemToOrder(
      productVariantId: params.productVariantId,
      quantity: params.quantity,
    );
  }
}
