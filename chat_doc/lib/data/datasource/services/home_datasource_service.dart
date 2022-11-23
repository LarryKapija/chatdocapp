import '../../entities/response/get_current_user_response.dart';
import '../../entities/response/get_users_response.dart';

abstract class HomeDataSourceService {
  Future<GetCurrentUserResponse> refreshUserFromBackend(String userToken);

  Future<GetUsersResponse> getUsersFromBackend(
    String userToken,
    String filter,
    int startIndex,
    int endIndex,
  );

  Future<UserResponse> getCurrentUserProfileFromLocalDatabase();
}
