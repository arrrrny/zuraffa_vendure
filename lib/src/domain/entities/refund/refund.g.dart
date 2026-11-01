// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Refund _$RefundFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Refund', json, ($checkedConvert) {
  final val = Refund(
    adjustment: $checkedConvert('adjustment', (v) => (v as num).toDouble()),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    id: $checkedConvert('id', (v) => v as String),
    items: $checkedConvert('items', (v) => (v as num).toDouble()),
    lines: $checkedConvert(
      'lines',
      (v) => (v as List<dynamic>)
          .map((e) => RefundLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    metadata: $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
    method: $checkedConvert('method', (v) => v as String?),
    paymentId: $checkedConvert('paymentId', (v) => v as String),
    reason: $checkedConvert('reason', (v) => v as String?),
    shipping: $checkedConvert('shipping', (v) => (v as num).toDouble()),
    state: $checkedConvert('state', (v) => v as String),
    total: $checkedConvert('total', (v) => (v as num).toDouble()),
    transactionId: $checkedConvert('transactionId', (v) => v as String?),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
  'adjustment': instance.adjustment,
  'createdAt': instance.createdAt.toIso8601String(),
  'id': instance.id,
  'items': instance.items,
  'lines': instance.lines.map((e) => e.toJson()).toList(),
  'metadata': ?instance.metadata,
  'method': ?instance.method,
  'paymentId': instance.paymentId,
  'reason': ?instance.reason,
  'shipping': instance.shipping,
  'state': instance.state,
  'total': instance.total,
  'transactionId': ?instance.transactionId,
  'updatedAt': instance.updatedAt.toIso8601String(),
};
