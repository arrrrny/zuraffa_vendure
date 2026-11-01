// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) => PriceRange(
  max: (json['max'] as num?)?.toDouble(),
  min: (json['min'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PriceRangeToJson(PriceRange instance) =>
    <String, dynamic>{'max': ?instance.max, 'min': ?instance.min};

SinglePrice _$SinglePriceFromJson(Map<String, dynamic> json) =>
    SinglePrice(value: (json['value'] as num?)?.toDouble());

Map<String, dynamic> _$SinglePriceToJson(SinglePrice instance) =>
    <String, dynamic>{'value': ?instance.value};
