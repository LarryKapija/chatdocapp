// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
part 'check_username_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CheckUserNameResponse implements BaseResponse {
  bool? value;

  @override
  String? message;

  @override
  String? type;

  CheckUserNameResponse(
      {required this.type, required this.message, required this.value});

  factory CheckUserNameResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckUserNameResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckUserNameResponseToJson(this);
}
