// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateOTPResponse _$ValidateOTPResponseFromJson(Map<String, dynamic> json) =>
    ValidateOTPResponse(
      type: json['type'] as String?,
      message: json['message'] as String?,
      value: json['value'] == null
          ? null
          : ValidateOTPUser.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidateOTPResponseToJson(
        ValidateOTPResponse instance) =>
    <String, dynamic>{
      'value': instance.value?.toJson(),
      'message': instance.message,
      'type': instance.type,
    };

ValidateOTPUser _$ValidateOTPUserFromJson(Map<String, dynamic> json) =>
    ValidateOTPUser(
      token: json['token'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$ValidateOTPUserToJson(ValidateOTPUser instance) =>
    <String, dynamic>{
      'token': instance.token,
      'name': instance.name,
      'email': instance.email,
    };
