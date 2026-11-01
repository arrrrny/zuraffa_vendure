// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_operators.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdOperators _$IdOperatorsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('IdOperators', json, ($checkedConvert) {
      final val = IdOperators(
        eq: $checkedConvert('eq', (v) => v as String?),
        in_: $checkedConvert(
          'in_',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        isNull: $checkedConvert('isNull', (v) => v as bool?),
        notEq: $checkedConvert('notEq', (v) => v as String?),
        notIn: $checkedConvert(
          'notIn',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$IdOperatorsToJson(IdOperators instance) =>
    <String, dynamic>{
      'eq': ?instance.eq,
      'in_': ?instance.in_,
      'isNull': ?instance.isNull,
      'notEq': ?instance.notEq,
      'notIn': ?instance.notIn,
    };
