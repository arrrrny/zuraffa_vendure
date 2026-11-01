// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionResult _$CollectionResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CollectionResult', json, ($checkedConvert) {
      final val = CollectionResult(
        collection: $checkedConvert(
          'collection',
          (v) => Collection.fromJson(v as Map<String, dynamic>),
        ),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$CollectionResultToJson(CollectionResult instance) =>
    <String, dynamic>{
      'collection': instance.collection.toJson(),
      'count': instance.count,
    };
