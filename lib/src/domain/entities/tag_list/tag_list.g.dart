// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagList _$TagListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TagList', json, ($checkedConvert) {
      final val = TagList(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$TagListToJson(TagList instance) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'totalItems': instance.totalItems,
};
