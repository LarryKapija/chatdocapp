// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'sent_otp_request.g.dart';

@JsonSerializable(explicitToJson: true)
class SentOTPRequest {
  String? userName;

  SentOTPRequest({this.userName});

  factory SentOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$SentOTPRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SentOTPRequestToJson(this);
}
