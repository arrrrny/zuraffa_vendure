// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchInput _$SearchInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SearchInput', json, ($checkedConvert) {
      final val = SearchInput(
        collectionId: $checkedConvert('collectionId', (v) => v as String?),
        collectionSlug: $checkedConvert('collectionSlug', (v) => v as String?),
        facetValueFilters: $checkedConvert(
          'facetValueFilters',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    FacetValueFilterInput.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
        groupByProduct: $checkedConvert('groupByProduct', (v) => v as bool?),
        inStock: $checkedConvert('inStock', (v) => v as bool?),
        skip: $checkedConvert('skip', (v) => (v as num?)?.toInt()),
        sort: $checkedConvert(
          'sort',
          (v) => v == null
              ? null
              : SearchResultSortParameter.fromJson(v as Map<String, dynamic>),
        ),
        take: $checkedConvert('take', (v) => (v as num?)?.toInt()),
        term: $checkedConvert('term', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SearchInputToJson(SearchInput instance) =>
    <String, dynamic>{
      'collectionId': ?instance.collectionId,
      'collectionSlug': ?instance.collectionSlug,
      'facetValueFilters': ?instance.facetValueFilters
          ?.map((e) => e.toJson())
          .toList(),
      'groupByProduct': ?instance.groupByProduct,
      'inStock': ?instance.inStock,
      'skip': ?instance.skip,
      'sort': ?instance.sort?.toJson(),
      'take': ?instance.take,
      'term': ?instance.term,
    };
