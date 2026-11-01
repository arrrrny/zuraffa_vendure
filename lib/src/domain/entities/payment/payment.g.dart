// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Payment', json, ($checkedConvert) {
  final val = Payment(
    amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    errorMessage: $checkedConvert('errorMessage', (v) => v as String?),
    id: $checkedConvert('id', (v) => v as String),
    metadata: $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
    method: $checkedConvert('method', (v) => v as String),
    refunds: $checkedConvert(
      'refunds',
      (v) => (v as List<dynamic>)
          .map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    state: $checkedConvert('state', (v) => v as String),
    transactionId: $checkedConvert('transactionId', (v) => v as String?),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
  'amount': instance.amount,
  'createdAt': instance.createdAt.toIso8601String(),
  'errorMessage': ?instance.errorMessage,
  'id': instance.id,
  'metadata': ?instance.metadata,
  'method': instance.method,
  'refunds': instance.refunds.map((e) => e.toJson()).toList(),
  'state': instance.state,
  'transactionId': ?instance.transactionId,
  'updatedAt': instance.updatedAt.toIso8601String(),
};
