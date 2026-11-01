// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_filter_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFilterParameter _$CustomerFilterParameterFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomerFilterParameter', json, ($checkedConvert) {
  final val = CustomerFilterParameter(
    and: $checkedConvert(
      'and',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CustomerFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    or: $checkedConvert(
      'or',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CustomerFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    emailAddress: $checkedConvert(
      'emailAddress',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    firstName: $checkedConvert(
      'firstName',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert(
      'id',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
    ),
    lastName: $checkedConvert(
      'lastName',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    phoneNumber: $checkedConvert(
      'phoneNumber',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    title: $checkedConvert(
      'title',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$CustomerFilterParameterToJson(
  CustomerFilterParameter instance,
) => <String, dynamic>{
  'and': ?instance.and?.map((e) => e.toJson()).toList(),
  'or': ?instance.or?.map((e) => e.toJson()).toList(),
  'createdAt': ?instance.createdAt?.toJson(),
  'emailAddress': ?instance.emailAddress?.toJson(),
  'firstName': ?instance.firstName?.toJson(),
  'id': ?instance.id?.toJson(),
  'lastName': ?instance.lastName?.toJson(),
  'phoneNumber': ?instance.phoneNumber?.toJson(),
  'title': ?instance.title?.toJson(),
  'updatedAt': ?instance.updatedAt?.toJson(),
};
