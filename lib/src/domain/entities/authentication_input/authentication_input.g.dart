// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationInput _$AuthenticationInputFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AuthenticationInput', json, ($checkedConvert) {
      final val = AuthenticationInput(
        native: $checkedConvert(
          'native',
          (v) => v == null
              ? null
              : NativeAuthInput.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AuthenticationInputToJson(
  AuthenticationInput instance,
) => <String, dynamic>{'native': ?instance.native?.toJson()};
