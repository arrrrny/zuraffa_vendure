// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfillment_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillmentLine _$FulfillmentLineFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FulfillmentLine', json, ($checkedConvert) {
      final val = FulfillmentLine(
        fulfillment: $checkedConvert(
          'fulfillment',
          (v) => Fulfillment.fromJson(v as Map<String, dynamic>),
        ),
        fulfillmentId: $checkedConvert('fulfillmentId', (v) => v as String),
        orderLine: $checkedConvert(
          'orderLine',
          (v) => OrderLine.fromJson(v as Map<String, dynamic>),
        ),
        orderLineId: $checkedConvert('orderLineId', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$FulfillmentLineToJson(FulfillmentLine instance) =>
    <String, dynamic>{
      'fulfillment': instance.fulfillment.toJson(),
      'fulfillmentId': instance.fulfillmentId,
      'orderLine': instance.orderLine.toJson(),
      'orderLineId': instance.orderLineId,
      'quantity': instance.quantity,
    };
