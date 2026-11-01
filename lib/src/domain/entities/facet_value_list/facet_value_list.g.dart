// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_value_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetValueList _$FacetValueListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FacetValueList', json, ($checkedConvert) {
      final val = FacetValueList(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => FacetValue.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$FacetValueListToJson(FacetValueList instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
    };
