// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInput _$PaymentInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaymentInput', json, ($checkedConvert) {
      final val = PaymentInput(
        metadata: $checkedConvert('metadata', (v) => v as Map<String, dynamic>),
        method: $checkedConvert('method', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PaymentInputToJson(PaymentInput instance) =>
    <String, dynamic>{'metadata': instance.metadata, 'method': instance.method};
