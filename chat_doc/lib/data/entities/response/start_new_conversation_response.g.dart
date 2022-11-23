// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_new_conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartNewConversationResponse _$StartNewConversationResponseFromJson(
        Map<String, dynamic> json) =>
    StartNewConversationResponse(
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StartNewConversationResponseToJson(
        StartNewConversationResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
    };
