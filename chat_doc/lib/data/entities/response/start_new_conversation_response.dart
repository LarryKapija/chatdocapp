// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
part 'start_new_conversation_response.g.dart';

@JsonSerializable(explicitToJson: true)
class StartNewConversationResponse implements BaseResponse {
  @override
  String? message;

  @override
  String? type;

  StartNewConversationResponse({required this.type, required this.message});

  factory StartNewConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$StartNewConversationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StartNewConversationResponseToJson(this);
}
