// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateOTPRequest _$ValidateOTPRequestFromJson(Map<String, dynamic> json) =>
    ValidateOTPRequest(
      userName: json['userName'],
      otp: json['otp'],
    );

Map<String, dynamic> _$ValidateOTPRequestToJson(ValidateOTPRequest instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'otp': instance.otp,
    };
