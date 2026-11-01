// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Customer', json, ($checkedConvert) {
  final val = Customer(
    addresses: $checkedConvert(
      'addresses',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    customFields: $checkedConvert(
      'customFields',
      (v) => v as Map<String, dynamic>?,
    ),
    emailAddress: $checkedConvert('emailAddress', (v) => v as String),
    firstName: $checkedConvert('firstName', (v) => v as String),
    id: $checkedConvert('id', (v) => v as String),
    lastName: $checkedConvert('lastName', (v) => v as String),
    orders: $checkedConvert(
      'orders',
      (v) => v == null ? null : OrderList.fromJson(v as Map<String, dynamic>),
    ),
    phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
    title: $checkedConvert('title', (v) => v as String?),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    user: $checkedConvert(
      'user',
      (v) => v == null ? null : User.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
  'addresses': ?instance.addresses?.map((e) => e.toJson()).toList(),
  'createdAt': instance.createdAt.toIso8601String(),
  'customFields': ?instance.customFields,
  'emailAddress': instance.emailAddress,
  'firstName': instance.firstName,
  'id': instance.id,
  'lastName': instance.lastName,
  'orders': ?instance.orders?.toJson(),
  'phoneNumber': ?instance.phoneNumber,
  'title': ?instance.title,
  'updatedAt': instance.updatedAt.toIso8601String(),
  'user': ?instance.user?.toJson(),
};
