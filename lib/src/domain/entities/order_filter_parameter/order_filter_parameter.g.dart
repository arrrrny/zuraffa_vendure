// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_filter_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderFilterParameter _$OrderFilterParameterFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderFilterParameter', json, ($checkedConvert) {
  final val = OrderFilterParameter(
    and: $checkedConvert(
      'and',
      (v) => (v as List<dynamic>?)
          ?.map((e) => OrderFilterParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    or: $checkedConvert(
      'or',
      (v) => (v as List<dynamic>?)
          ?.map((e) => OrderFilterParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    active: $checkedConvert(
      'active',
      (v) => v == null
          ? null
          : BooleanOperators.fromJson(v as Map<String, dynamic>),
    ),
    code: $checkedConvert(
      'code',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    currencyCode: $checkedConvert(
      'currencyCode',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert(
      'id',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
    ),
    orderPlacedAt: $checkedConvert(
      'orderPlacedAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    shipping: $checkedConvert(
      'shipping',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    shippingWithTax: $checkedConvert(
      'shippingWithTax',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    state: $checkedConvert(
      'state',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    subTotal: $checkedConvert(
      'subTotal',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    subTotalWithTax: $checkedConvert(
      'subTotalWithTax',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    total: $checkedConvert(
      'total',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    totalQuantity: $checkedConvert(
      'totalQuantity',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    totalWithTax: $checkedConvert(
      'totalWithTax',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    type: $checkedConvert(
      'type',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$OrderFilterParameterToJson(
  OrderFilterParameter instance,
) => <String, dynamic>{
  'and': ?instance.and?.map((e) => e.toJson()).toList(),
  'or': ?instance.or?.map((e) => e.toJson()).toList(),
  'active': ?instance.active?.toJson(),
  'code': ?instance.code?.toJson(),
  'createdAt': ?instance.createdAt?.toJson(),
  'currencyCode': ?instance.currencyCode?.toJson(),
  'id': ?instance.id?.toJson(),
  'orderPlacedAt': ?instance.orderPlacedAt?.toJson(),
  'shipping': ?instance.shipping?.toJson(),
  'shippingWithTax': ?instance.shippingWithTax?.toJson(),
  'state': ?instance.state?.toJson(),
  'subTotal': ?instance.subTotal?.toJson(),
  'subTotalWithTax': ?instance.subTotalWithTax?.toJson(),
  'total': ?instance.total?.toJson(),
  'totalQuantity': ?instance.totalQuantity?.toJson(),
  'totalWithTax': ?instance.totalWithTax?.toJson(),
  'type': ?instance.type?.toJson(),
  'updatedAt': ?instance.updatedAt?.toJson(),
};
