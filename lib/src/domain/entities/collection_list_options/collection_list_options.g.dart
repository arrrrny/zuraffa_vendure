// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_list_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionListOptions _$CollectionListOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CollectionListOptions', json, ($checkedConvert) {
  final val = CollectionListOptions(
    filter: $checkedConvert(
      'filter',
      (v) => v == null
          ? null
          : CollectionFilterParameter.fromJson(v as Map<String, dynamic>),
    ),
    filterOperator: $checkedConvert(
      'filterOperator',
      (v) => $enumDecodeNullable(_$LogicalOperatorEnumMap, v),
    ),
    skip: $checkedConvert('skip', (v) => (v as num?)?.toInt()),
    sort: $checkedConvert(
      'sort',
      (v) => v == null
          ? null
          : CollectionSortParameter.fromJson(v as Map<String, dynamic>),
    ),
    take: $checkedConvert('take', (v) => (v as num?)?.toInt()),
    topLevelOnly: $checkedConvert('topLevelOnly', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$CollectionListOptionsToJson(
  CollectionListOptions instance,
) => <String, dynamic>{
  'filter': ?instance.filter?.toJson(),
  'filterOperator': ?_$LogicalOperatorEnumMap[instance.filterOperator],
  'skip': ?instance.skip,
  'sort': ?instance.sort?.toJson(),
  'take': ?instance.take,
  'topLevelOnly': ?instance.topLevelOnly,
};

const _$LogicalOperatorEnumMap = {
  LogicalOperator.and: 'AND',
  LogicalOperator.or: 'OR',
};
