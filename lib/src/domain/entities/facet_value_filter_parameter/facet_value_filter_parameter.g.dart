// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_value_filter_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacetValueFilterParameter _$FacetValueFilterParameterFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FacetValueFilterParameter', json, ($checkedConvert) {
  final val = FacetValueFilterParameter(
    and: $checkedConvert(
      'and',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                FacetValueFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    or: $checkedConvert(
      'or',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                FacetValueFilterParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    code: $checkedConvert(
      'code',
      (v) => v == null
          ? null
          : StringOperators.fromJson(v as Map<String, dynamic>),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
    facetId: $checkedConvert(
      'facetId',
      (v) => v == null ? null : IdOperators.fromJson(v as Map<String, dynamic>),
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
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) =>
          v == null ? null : DateOperators.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$FacetValueFilterParameterToJson(
  FacetValueFilterParameter instance,
) => <String, dynamic>{
  'and': ?instance.and?.map((e) => e.toJson()).toList(),
  'or': ?instance.or?.map((e) => e.toJson()).toList(),
  'code': ?instance.code?.toJson(),
  'createdAt': ?instance.createdAt?.toJson(),
  'facetId': ?instance.facetId?.toJson(),
  'id': ?instance.id?.toJson(),
  'languageCode': ?instance.languageCode?.toJson(),
  'name': ?instance.name?.toJson(),
  'updatedAt': ?instance.updatedAt?.toJson(),
};
