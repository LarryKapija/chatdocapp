// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
part 'validate_otp_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ValidateOTPResponse implements BaseResponse {
  ValidateOTPUser? value;

  @override
  String? message;

  @override
  String? type;

  ValidateOTPResponse(
      {required this.type, required this.message, required this.value});

  factory ValidateOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidateOTPResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ValidateOTPResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ValidateOTPUser {
  String? token;
  String? name;
  String? email;

  ValidateOTPUser(
      {required this.token, required this.name, required this.email});

  factory ValidateOTPUser.fromJson(Map<String, dynamic> json) =>
      _$ValidateOTPUserFromJson(json);

  Map<String, dynamic> toJson() => _$ValidateOTPUserToJson(this);
}
