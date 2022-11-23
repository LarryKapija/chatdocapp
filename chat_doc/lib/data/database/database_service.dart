import '../entities/response/response.dart';

abstract class DataBaseService {
  Future<UserResponse> getCurrentUser();

  Future saveCurrentUser(UserResponse user);
}
