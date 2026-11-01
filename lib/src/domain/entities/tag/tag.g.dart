// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => $checkedCreate('Tag', json, (
  $checkedConvert,
) {
  final val = Tag(
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    id: $checkedConvert('id', (v) => v as String),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    value: $checkedConvert('value', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'id': instance.id,
  'updatedAt': instance.updatedAt.toIso8601String(),
  'value': instance.value,
};
