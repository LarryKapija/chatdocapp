// ignore_for_file: depend_on_referenced_packages

import 'base_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'get_current_user_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetCurrentUserResponse implements BaseResponse {
  UserResponse? value;

  @override
  String? message;

  @override
  String? type;

  GetCurrentUserResponse(
      {required this.type, required this.message, required this.value});

  factory GetCurrentUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCurrentUserResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserResponse {
  String? name;
  String? email;
  String? photoUrl;
  List<ConversationResponse>? conversations;

  UserResponse({this.name, this.email, this.photoUrl, this.conversations});

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ConversationResponse {
  String? key;
  String? withUser;

  ConversationResponse({this.key, this.withUser});

  factory ConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationResponseToJson(this);
}
