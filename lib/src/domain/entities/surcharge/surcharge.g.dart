// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surcharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Surcharge _$SurchargeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Surcharge', json, ($checkedConvert) {
  final val = Surcharge(
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    description: $checkedConvert('description', (v) => v as String),
    id: $checkedConvert('id', (v) => v as String),
    price: $checkedConvert('price', (v) => (v as num).toDouble()),
    priceWithTax: $checkedConvert('priceWithTax', (v) => (v as num).toDouble()),
    sku: $checkedConvert('sku', (v) => v as String?),
    taxLines: $checkedConvert(
      'taxLines',
      (v) => (v as List<dynamic>)
          .map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    taxRate: $checkedConvert('taxRate', (v) => (v as num).toDouble()),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$SurchargeToJson(Surcharge instance) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'description': instance.description,
  'id': instance.id,
  'price': instance.price,
  'priceWithTax': instance.priceWithTax,
  'sku': ?instance.sku,
  'taxLines': instance.taxLines.map((e) => e.toJson()).toList(),
  'taxRate': instance.taxRate,
  'updatedAt': instance.updatedAt.toIso8601String(),
};
