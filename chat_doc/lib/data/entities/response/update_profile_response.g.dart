// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateExistingProfileResponse _$UpdateExistingProfileResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateExistingProfileResponse(
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UpdateExistingProfileResponseToJson(
        UpdateExistingProfileResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
    };
