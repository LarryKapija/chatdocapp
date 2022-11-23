// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
part 'register_user_response.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterUserResponse implements BaseResponse {
  @override
  String? message;

  @override
  String? type;

  RegisterUserResponse({required this.type, required this.message});

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserResponseToJson(this);
}
