// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'get_users_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetUsersResponse {
  String? type;
  String? message;
  List<Users>? value;

  GetUsersResponse({this.type, this.message, this.value});

  factory GetUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUsersResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users {
  String? name;
  String? email;
  String? photoUrl;

  Users({this.name, this.email, this.photoUrl});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
