// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'validate_otp_request.g.dart';

@JsonSerializable(explicitToJson: true)
class ValidateOTPRequest {
  String? userName;
  String? otp;

  ValidateOTPRequest({userName, otp});

  factory ValidateOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$ValidateOTPRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ValidateOTPRequestToJson(this);
}
