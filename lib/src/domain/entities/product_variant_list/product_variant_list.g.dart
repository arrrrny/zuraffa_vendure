// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariantList _$ProductVariantListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductVariantList', json, ($checkedConvert) {
      final val = ProductVariantList(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ProductVariantListToJson(ProductVariantList instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
    };
