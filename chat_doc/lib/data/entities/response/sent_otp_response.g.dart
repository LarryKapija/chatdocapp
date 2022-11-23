// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentOTPResponse _$SentOTPResponseFromJson(Map<String, dynamic> json) =>
    SentOTPResponse(
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SentOTPResponseToJson(SentOTPResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
    };
