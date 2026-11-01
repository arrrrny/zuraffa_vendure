// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCustomerInput _$UpdateCustomerInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateCustomerInput', json, ($checkedConvert) {
      final val = UpdateCustomerInput(
        customFields: $checkedConvert(
          'customFields',
          (v) => v as Map<String, dynamic>?,
        ),
        firstName: $checkedConvert('firstName', (v) => v as String?),
        lastName: $checkedConvert('lastName', (v) => v as String?),
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
        title: $checkedConvert('title', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UpdateCustomerInputToJson(
  UpdateCustomerInput instance,
) => <String, dynamic>{
  'customFields': ?instance.customFields,
  'firstName': ?instance.firstName,
  'lastName': ?instance.lastName,
  'phoneNumber': ?instance.phoneNumber,
  'title': ?instance.title,
};
