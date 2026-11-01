// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleList _$RoleListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RoleList', json, ($checkedConvert) {
      final val = RoleList(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => Role.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$RoleListToJson(RoleList instance) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'totalItems': instance.totalItems,
};
