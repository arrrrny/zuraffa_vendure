// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeletionResponse _$DeletionResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DeletionResponse', json, ($checkedConvert) {
      final val = DeletionResponse(
        message: $checkedConvert('message', (v) => v as String?),
        result: $checkedConvert(
          'result',
          (v) => $enumDecode(_$DeletionResultEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DeletionResponseToJson(DeletionResponse instance) =>
    <String, dynamic>{
      'message': ?instance.message,
      'result': _$DeletionResultEnumMap[instance.result]!,
    };

const _$DeletionResultEnumMap = {
  DeletionResult.deleted: 'DELETED',
  DeletionResult.notDeleted: 'NOT_DELETED',
};
