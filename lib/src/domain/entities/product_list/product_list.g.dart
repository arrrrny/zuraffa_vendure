// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductList _$ProductListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductList', json, ($checkedConvert) {
      final val = ProductList(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ProductListToJson(ProductList instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
    };
