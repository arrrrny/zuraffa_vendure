// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_value_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetValueResult _$FacetValueResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FacetValueResult', json, ($checkedConvert) {
      final val = FacetValueResult(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        facetValue: $checkedConvert(
          'facetValue',
          (v) => FacetValue.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FacetValueResultToJson(FacetValueResult instance) =>
    <String, dynamic>{
      'count': instance.count,
      'facetValue': instance.facetValue.toJson(),
    };
