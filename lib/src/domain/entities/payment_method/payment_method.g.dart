// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaymentMethod', json, ($checkedConvert) {
  final val = PaymentMethod(
    checker: $checkedConvert(
      'checker',
      (v) => v == null
          ? null
          : ConfigurableOperation.fromJson(v as Map<String, dynamic>),
    ),
    code: $checkedConvert('code', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    customFields: $checkedConvert(
      'customFields',
      (v) => v as Map<String, dynamic>?,
    ),
    description: $checkedConvert('description', (v) => v as String),
    enabled: $checkedConvert('enabled', (v) => v as bool),
    handler: $checkedConvert(
      'handler',
      (v) => ConfigurableOperation.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    translations: $checkedConvert(
      'translations',
      (v) => (v as List<dynamic>)
          .map(
            (e) => PaymentMethodTranslation.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'checker': ?instance.checker?.toJson(),
      'code': instance.code,
      'createdAt': instance.createdAt.toIso8601String(),
      'customFields': ?instance.customFields,
      'description': instance.description,
      'enabled': instance.enabled,
      'handler': instance.handler.toJson(),
      'id': instance.id,
      'name': instance.name,
      'translations': instance.translations.map((e) => e.toJson()).toList(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
