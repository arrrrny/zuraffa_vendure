// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configurable_operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigurableOperation _$ConfigurableOperationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConfigurableOperation', json, ($checkedConvert) {
  final val = ConfigurableOperation(
    args: $checkedConvert(
      'args',
      (v) => (v as List<dynamic>)
          .map((e) => ConfigArg.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    code: $checkedConvert('code', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ConfigurableOperationToJson(
  ConfigurableOperation instance,
) => <String, dynamic>{
  'args': instance.args.map((e) => e.toJson()).toList(),
  'code': instance.code,
};
