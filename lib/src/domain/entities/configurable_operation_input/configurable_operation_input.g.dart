// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configurable_operation_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigurableOperationInput _$ConfigurableOperationInputFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConfigurableOperationInput', json, ($checkedConvert) {
  final val = ConfigurableOperationInput(
    arguments: $checkedConvert(
      'arguments',
      (v) => (v as List<dynamic>)
          .map((e) => ConfigArgInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    code: $checkedConvert('code', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ConfigurableOperationInputToJson(
  ConfigurableOperationInput instance,
) => <String, dynamic>{
  'arguments': instance.arguments.map((e) => e.toJson()).toList(),
  'code': instance.code,
};
