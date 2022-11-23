// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'register_user_request.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterUserRequest {
  String? name;
  String? email;

  RegisterUserRequest({this.name, this.email});

  factory RegisterUserRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUserRequestToJson(this);
}
