import 'dart:convert';

import 'package:chat_doc/data/database/database_service.dart';
import 'package:chat_doc/data/entities/response/get_current_user_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataBase implements DataBaseService {
  late SharedPreferences preferences;

  @override
  Future<UserResponse> getCurrentUser() async {
    preferences = await SharedPreferences.getInstance();

    var userJson = preferences.getString('user-profile') ?? '{}';

    return UserResponse.fromJson(json.decode(userJson));
  }

  @override
  Future saveCurrentUser(UserResponse user) async {
    preferences = await SharedPreferences.getInstance();

    preferences.setString('user-profile', json.encode(user.toJson()));
  }
}
