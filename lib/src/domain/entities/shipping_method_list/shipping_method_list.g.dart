// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethodList _$ShippingMethodListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ShippingMethodList', json, ($checkedConvert) {
      final val = ShippingMethodList(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalItems: $checkedConvert('totalItems', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ShippingMethodListToJson(ShippingMethodList instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
    };
