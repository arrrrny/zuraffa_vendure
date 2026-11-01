// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_list_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariantListOptions _$ProductVariantListOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductVariantListOptions', json, ($checkedConvert) {
  final val = ProductVariantListOptions(
    filter: $checkedConvert(
      'filter',
      (v) => v == null
          ? null
          : ProductVariantFilterParameter.fromJson(v as Map<String, dynamic>),
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
          : ProductVariantSortParameter.fromJson(v as Map<String, dynamic>),
    ),
    take: $checkedConvert('take', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ProductVariantListOptionsToJson(
  ProductVariantListOptions instance,
) => <String, dynamic>{
  'filter': ?instance.filter?.toJson(),
  'filterOperator': ?_$LogicalOperatorEnumMap[instance.filterOperator],
  'skip': ?instance.skip,
  'sort': ?instance.sort?.toJson(),
  'take': ?instance.take,
};

const _$LogicalOperatorEnumMap = {
  LogicalOperator.and: 'AND',
  LogicalOperator.or: 'OR',
};
