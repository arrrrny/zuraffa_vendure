// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfillment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fulfillment _$FulfillmentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Fulfillment', json, ($checkedConvert) {
  final val = Fulfillment(
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    customFields: $checkedConvert(
      'customFields',
      (v) => v as Map<String, dynamic>?,
    ),
    id: $checkedConvert('id', (v) => v as String),
    lines: $checkedConvert(
      'lines',
      (v) => (v as List<dynamic>)
          .map((e) => FulfillmentLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    method: $checkedConvert('method', (v) => v as String),
    state: $checkedConvert('state', (v) => v as String),
    summary: $checkedConvert(
      'summary',
      (v) => (v as List<dynamic>)
          .map((e) => FulfillmentLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    trackingCode: $checkedConvert('trackingCode', (v) => v as String?),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$FulfillmentToJson(Fulfillment instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'customFields': ?instance.customFields,
      'id': instance.id,
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'method': instance.method,
      'state': instance.state,
      'summary': instance.summary.map((e) => e.toJson()).toList(),
      'trackingCode': ?instance.trackingCode,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
