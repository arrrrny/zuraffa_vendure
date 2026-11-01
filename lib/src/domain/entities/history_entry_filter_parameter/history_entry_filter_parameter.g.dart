// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_entry_filter_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryEntryFilterParameter _$HistoryEntryFilterParameterFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('HistoryEntryFilterParameter', json, ($checkedConvert) {
  final val = HistoryEntryFilterParameter(
    and: $checkedConvert(
      'and',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                HistoryEntryFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    or: $checkedConvert(
      'or',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                HistoryEntryFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert(
      'id',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
    ),
    type: $checkedConvert(
      'type',
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

Map<String, dynamic> _$HistoryEntryFilterParameterToJson(
  HistoryEntryFilterParameter instance,
) => <String, dynamic>{
  'and': ?instance.and?.map((e) => e.toJson()).toList(),
  'or': ?instance.or?.map((e) => e.toJson()).toList(),
  'createdAt': ?instance.createdAt?.toJson(),
  'id': ?instance.id?.toJson(),
  'type': ?instance.type?.toJson(),
  'updatedAt': ?instance.updatedAt?.toJson(),
};
