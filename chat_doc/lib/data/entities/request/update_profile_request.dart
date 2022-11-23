// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'update_profile_request.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateProfileRequest {
  String? email;

  UpdateProfileRequest({email});

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
