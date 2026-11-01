// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_filter_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariantFilterParameter _$ProductVariantFilterParameterFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductVariantFilterParameter', json, ($checkedConvert) {
  final val = ProductVariantFilterParameter(
    and: $checkedConvert(
      'and',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProductVariantFilterParameter.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    or: $checkedConvert(
      'or',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProductVariantFilterParameter.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    currencyCode: $checkedConvert(
      'currencyCode',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    id: $checkedConvert(
      'id',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
    ),
    languageCode: $checkedConvert(
      'languageCode',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    name: $checkedConvert(
      'name',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    price: $checkedConvert(
      'price',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    priceWithTax: $checkedConvert(
      'priceWithTax',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    productId: $checkedConvert(
      'productId',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
    ),
    sku: $checkedConvert(
      'sku',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    stockLevel: $checkedConvert(
      'stockLevel',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductVariantFilterParameterToJson(
  ProductVariantFilterParameter instance,
) => <String, dynamic>{
  'and': ?instance.and?.map((e) => e.toJson()).toList(),
  'or': ?instance.or?.map((e) => e.toJson()).toList(),
  'createdAt': ?instance.createdAt?.toJson(),
  'currencyCode': ?instance.currencyCode?.toJson(),
  'id': ?instance.id?.toJson(),
  'languageCode': ?instance.languageCode?.toJson(),
  'name': ?instance.name?.toJson(),
  'price': ?instance.price?.toJson(),
  'priceWithTax': ?instance.priceWithTax?.toJson(),
  'productId': ?instance.productId?.toJson(),
  'sku': ?instance.sku?.toJson(),
  'stockLevel': ?instance.stockLevel?.toJson(),
  'updatedAt': ?instance.updatedAt?.toJson(),
};
