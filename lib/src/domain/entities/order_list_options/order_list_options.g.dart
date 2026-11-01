// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListOptions _$OrderListOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OrderListOptions', json, ($checkedConvert) {
      final val = OrderListOptions(
        filter: $checkedConvert(
          'filter',
          (v) => v == null
              ? null
              : OrderFilterParameter.fromJson(v as Map<String, dynamic>),
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
              : OrderSortParameter.fromJson(v as Map<String, dynamic>),
        ),
        take: $checkedConvert('take', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$OrderListOptionsToJson(OrderListOptions instance) =>
    <String, dynamic>{
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
