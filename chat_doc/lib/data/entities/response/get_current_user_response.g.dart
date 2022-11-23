// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCurrentUserResponse _$GetCurrentUserResponseFromJson(
        Map<String, dynamic> json) =>
    GetCurrentUserResponse(
      type: json['type'] as String?,
      message: json['message'] as String?,
      value: json['value'] == null
          ? null
          : UserResponse.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetCurrentUserResponseToJson(
        GetCurrentUserResponse instance) =>
    <String, dynamic>{
      'value': instance.value?.toJson(),
      'message': instance.message,
      'type': instance.type,
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      name: json['name'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photoUrl'] as String?,
      conversations: (json['conversations'] as List<dynamic>?)
          ?.map((e) => ConversationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'conversations': instance.conversations?.map((e) => e.toJson()).toList(),
    };

ConversationResponse _$ConversationResponseFromJson(
        Map<String, dynamic> json) =>
    ConversationResponse(
      key: json['key'] as String?,
      withUser: json['withUser'] as String?,
    );

Map<String, dynamic> _$ConversationResponseToJson(
        ConversationResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'withUser': instance.withUser,
    };
