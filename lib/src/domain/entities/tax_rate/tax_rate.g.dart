// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxRate _$TaxRateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TaxRate', json, ($checkedConvert) {
  final val = TaxRate(
    category: $checkedConvert(
      'category',
      (v) => TaxCategory.fromJson(v as Map<String, dynamic>),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    customFields: $checkedConvert(
      'customFields',
      (v) => v as Map<String, dynamic>?,
    ),
    customerGroup: $checkedConvert(
      'customerGroup',
      (v) =>
          v == null ? null : CustomerGroup.fromJson(v as Map<String, dynamic>),
    ),
    enabled: $checkedConvert('enabled', (v) => v as bool),
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    value: $checkedConvert('value', (v) => (v as num).toDouble()),
    zone: $checkedConvert(
      'zone',
      (v) => Zone.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$TaxRateToJson(TaxRate instance) => <String, dynamic>{
  'category': instance.category.toJson(),
  'createdAt': instance.createdAt.toIso8601String(),
  'customFields': ?instance.customFields,
  'customerGroup': ?instance.customerGroup?.toJson(),
  'enabled': instance.enabled,
  'id': instance.id,
  'name': instance.name,
  'updatedAt': instance.updatedAt.toIso8601String(),
  'value': instance.value,
  'zone': instance.zone.toJson(),
};
