// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SearchResponse', json, ($checkedConvert) {
      final val = SearchResponse(
        collections: $checkedConvert(
          'collections',
          (v) => (v as List<dynamic>)
              .map((e) => CollectionResult.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        facetValues: $checkedConvert(
          'facetValues',
          (v) => (v as List<dynamic>)
              .map((e) => FacetValueResult.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      'facetValues': instance.facetValues.map((e) => e.toJson()).toList(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
    };
