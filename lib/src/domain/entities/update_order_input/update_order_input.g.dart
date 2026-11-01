// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderInput _$UpdateOrderInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateOrderInput', json, ($checkedConvert) {
      final val = UpdateOrderInput(
        customFields: $checkedConvert(
          'customFields',
          (v) => v as Map<String, dynamic>?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdateOrderInputToJson(UpdateOrderInput instance) =>
    <String, dynamic>{'customFields': ?instance.customFields};
