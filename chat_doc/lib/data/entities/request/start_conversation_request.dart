// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'start_conversation_request.g.dart';

@JsonSerializable(explicitToJson: true)
class StartConversationRequest {
  String? withUser;

  StartConversationRequest({withUser});

  factory StartConversationRequest.fromJson(Map<String, dynamic> json) =>
      _$StartConversationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$StartConversationRequestToJson(this);
}
