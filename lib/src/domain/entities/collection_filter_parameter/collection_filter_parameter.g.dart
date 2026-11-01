// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_filter_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionFilterParameter _$CollectionFilterParameterFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CollectionFilterParameter', json, ($checkedConvert) {
  final val = CollectionFilterParameter(
    and: $checkedConvert(
      'and',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                CollectionFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    or: $checkedConvert(
      'or',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                CollectionFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    description: $checkedConvert(
      'description',
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
    parentId: $checkedConvert(
      'parentId',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
    ),
    position: $checkedConvert(
      'position',
      (v) => v == null
          ? null
          : NumberOperators.fromJson(v as Map<String, dynamic>),
    ),
    slug: $checkedConvert(
      'slug',
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

Map<String, dynamic> _$CollectionFilterParameterToJson(
  CollectionFilterParameter instance,
) => <String, dynamic>{
  'and': ?instance.and?.map((e) => e.toJson()).toList(),
  'or': ?instance.or?.map((e) => e.toJson()).toList(),
  'createdAt': ?instance.createdAt?.toJson(),
  'description': ?instance.description?.toJson(),
  'id': ?instance.id?.toJson(),
  'languageCode': ?instance.languageCode?.toJson(),
  'name': ?instance.name?.toJson(),
  'parentId': ?instance.parentId?.toJson(),
  'position': ?instance.position?.toJson(),
  'slug': ?instance.slug?.toJson(),
  'updatedAt': ?instance.updatedAt?.toJson(),
};
