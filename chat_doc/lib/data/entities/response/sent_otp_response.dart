// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
part 'sent_otp_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SentOTPResponse implements BaseResponse {
  @override
  String? message;

  @override
  String? type;

  SentOTPResponse({required this.type, required this.message});

  factory SentOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$SentOTPResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SentOTPResponseToJson(this);
}
