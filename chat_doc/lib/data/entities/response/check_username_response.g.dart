// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_username_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckUserNameResponse _$CheckUserNameResponseFromJson(
        Map<String, dynamic> json) =>
    CheckUserNameResponse(
      type: json['type'] as String?,
      message: json['message'] as String?,
      value: json['value'] as bool?,
    );

Map<String, dynamic> _$CheckUserNameResponseToJson(
        CheckUserNameResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'message': instance.message,
      'type': instance.type,
    };
