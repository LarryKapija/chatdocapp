// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'base_response.dart';
part 'update_profile_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateExistingProfileResponse implements BaseResponse {
  @override
  String? message;

  @override
  String? type;

  UpdateExistingProfileResponse({required this.type, required this.message});

  factory UpdateExistingProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateExistingProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateExistingProfileResponseToJson(this);
}
