// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Seller _$SellerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Seller', json, ($checkedConvert) {
  final val = Seller(
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    customFields: $checkedConvert(
      'customFields',
      (v) => v as Map<String, dynamic>?,
    ),
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$SellerToJson(Seller instance) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'customFields': ?instance.customFields,
  'id': instance.id,
  'name': instance.name,
  'updatedAt': instance.updatedAt.toIso8601String(),
};
