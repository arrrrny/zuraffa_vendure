// Vendure-specific repository implementation (T035)
// Delegates to [VendureDataSource] with per-method GraphQL docs,
// variables, fromJson, and expectedDataType.

import '../../domain/datasources/vendure_datasource.dart';
import '../../domain/repositories/order_repository.dart';

import 'package:vendure/src/mutations/add_item_to_order_mutation.dart';
import 'package:vendure/src/mutations/add_payment_to_order_mutation.dart';
import 'package:vendure/src/mutations/adjust_order_line_mutation.dart';
import 'package:vendure/src/mutations/apply_coupon_code_mutation.dart';
import 'package:vendure/src/mutations/remove_all_order_lines_mutation.dart';
import 'package:vendure/src/mutations/remove_coupon_code_mutation.dart';
import 'package:vendure/src/mutations/remove_order_line_mutation.dart';
import 'package:vendure/src/mutations/set_customer_for_order_mutation.dart';
import 'package:vendure/src/mutations/set_order_billing_address_mutation.dart';
import 'package:vendure/src/mutations/set_order_custom_fields_mutation.dart';
import 'package:vendure/src/mutations/set_order_shipping_address_mutation.dart';
import 'package:vendure/src/mutations/set_order_shipping_method_mutation.dart';
import 'package:vendure/src/mutations/transition_order_to_state_mutation.dart';
import 'package:vendure/src/queries/get_active_order_query.dart';
import 'package:vendure/src/queries/get_next_order_states_query.dart';
import 'package:vendure/src/queries/get_order_by_code_query.dart';
import 'package:vendure/src/queries/get_payment_methods_query.dart';
import 'package:vendure/src/queries/get_shipping_methods_query.dart';

import '../../domain/entities/exports.dart';

class DataOrderRepository implements OrderRepository {
  final VendureDataSource _dataSource;

  DataOrderRepository({required this._dataSource});

  @override
  Future<UpdateOrderItemsResult> addItemToOrder({
    required String productVariantId,
    required int quantity,
  }) {
    return _dataSource.mutate<UpdateOrderItemsResult>(
      addItemToOrderMutation,
      variables: {'productVariantId': productVariantId, 'quantity': quantity},
      headers: const {},
      fromJson: UpdateOrderItemsResult.fromJson,
      expectedDataType: 'addItemToOrder',
    );
  }

  @override
  Future<ActiveOrderResult> setOrderShippingAddress({
    required CreateAddressInput input,
  }) {
    return _dataSource.mutate<ActiveOrderResult>(
      setOrderShippingAddressMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: ActiveOrderResult.fromJson,
      expectedDataType: 'setOrderShippingAddress',
    );
  }

  @override
  Future<ActiveOrderResult> setOrderBillingAddress({
    required CreateAddressInput input,
  }) {
    return _dataSource.mutate<ActiveOrderResult>(
      setOrderBillingAddressMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: ActiveOrderResult.fromJson,
      expectedDataType: 'setOrderBillingAddress',
    );
  }

  @override
  Future<Order?> getActiveOrder() {
    return _dataSource.query<Order?>(
      getActiveOrderQuery,
      variables: {},
      headers: const {},
      fromJson: Order.fromJson,
      expectedDataType: 'activeOrder',
    );
  }

  @override
  Future<AddPaymentToOrderResult> addPaymentToOrder({
    required PaymentInput input,
  }) {
    return _dataSource.mutate<AddPaymentToOrderResult>(
      addPaymentToOrderMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: AddPaymentToOrderResult.fromJson,
      expectedDataType: 'addPaymentToOrder',
    );
  }

  @override
  Future<Order> getOrderByCode({required String code}) {
    return _dataSource.query<Order>(
      getOrderByCodeQuery,
      variables: {'code': code},
      headers: const {},
      fromJson: Order.fromJson,
      expectedDataType: 'orderByCode',
    );
  }

  @override
  Future<List<PaymentMethodQuote>> getPaymentMethods() {
    return _dataSource.queryList<PaymentMethodQuote>(
      getPaymentMethodsQuery,
      variables: {},
      headers: const {},
      fromJson: PaymentMethodQuote.fromJson,
      expectedDataType: 'eligiblePaymentMethods',
    );
  }

  @override
  Future<List<ShippingMethodQuote>> getShippingMethods() {
    return _dataSource.queryList<ShippingMethodQuote>(
      getShippingMethodsQuery,
      variables: {},
      headers: const {},
      fromJson: ShippingMethodQuote.fromJson,
      expectedDataType: 'eligibleShippingMethods',
    );
  }

  @override
  Future<SetCustomerForOrderResult> setCustomerForOrder({
    required CreateCustomerInput input,
  }) {
    return _dataSource.mutate<SetCustomerForOrderResult>(
      setCustomerForOrderMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: SetCustomerForOrderResult.fromJson,
      expectedDataType: 'setCustomerForOrder',
    );
  }

  @override
  Future<List<String>> getNextOrderStates() {
    return _dataSource.queryList<String>(
      getNextOrderStatesQuery,
      variables: {},
      headers: const {},
      expectedDataType: 'nextOrderStates',
    );
  }

  @override
  Future<RemoveOrderItemsResult> removeOrderLine({
    required String orderLineId,
  }) {
    return _dataSource.mutate<RemoveOrderItemsResult>(
      removeOrderLineMutation,
      variables: {'orderLineId': orderLineId},
      headers: const {},
      fromJson: RemoveOrderItemsResult.fromJson,
      expectedDataType: 'removeOrderLine',
    );
  }

  @override
  Future<RemoveOrderItemsResult> removeAllOrderLines() {
    return _dataSource.mutate<RemoveOrderItemsResult>(
      removeAllOrderLinesMutation,
      variables: {},
      headers: const {},
      fromJson: RemoveOrderItemsResult.fromJson,
      expectedDataType: 'removeAllOrderLines',
    );
  }

  @override
  Future<UpdateOrderItemsResult> adjustOrderLine({
    required String orderLineId,
    required int quantity,
  }) {
    return _dataSource.mutate<UpdateOrderItemsResult>(
      adjustOrderLineMutation,
      variables: {'orderLineId': orderLineId, 'quantity': quantity},
      headers: const {},
      fromJson: UpdateOrderItemsResult.fromJson,
      expectedDataType: 'adjustOrderLine',
    );
  }

  @override
  Future<ApplyCouponCodeResult> applyCouponCode({required String couponCode}) {
    return _dataSource.mutate<ApplyCouponCodeResult>(
      applyCouponCodeMutation,
      variables: {'couponCode': couponCode},
      headers: const {},
      fromJson: ApplyCouponCodeResult.fromJson,
      expectedDataType: 'applyCouponCode',
    );
  }

  @override
  Future<Order> removeCouponCode({required String couponCode}) {
    return _dataSource.mutate<Order>(
      removeCouponCodeMutation,
      variables: {'couponCode': couponCode},
      headers: const {},
      fromJson: Order.fromJson,
      expectedDataType: 'removeCouponCode',
    );
  }

  @override
  Future<TransitionOrderToStateResult> transitionOrderToState({
    required String state,
  }) {
    return _dataSource.mutate<TransitionOrderToStateResult>(
      transitionOrderToStateMutation,
      variables: {'state': state},
      headers: const {},
      fromJson: TransitionOrderToStateResult.fromJson,
      expectedDataType: 'transitionOrderToState',
    );
  }

  @override
  Future<ActiveOrderResult> setOrderCustomFields({
    required UpdateOrderInput input,
  }) {
    return _dataSource.mutate<ActiveOrderResult>(
      setOrderCustomFieldsMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: ActiveOrderResult.fromJson,
      expectedDataType: 'setOrderCustomFields',
    );
  }

  @override
  Future<SetOrderShippingMethodResult> setOrderShippingMethod({
    required String shippingMethodId,
    List<String> additionalMethodIds = const [],
  }) {
    List<String> methodIds = [];
    methodIds.add(shippingMethodId);
    methodIds.addAll(additionalMethodIds);
    return _dataSource.mutate<SetOrderShippingMethodResult>(
      setOrderShippingMethodMutation,
      variables: {'shippingMethodId': methodIds},
      headers: const {},
      fromJson: SetOrderShippingMethodResult.fromJson,
      expectedDataType: 'setOrderShippingMethod',
    );
  }
}
