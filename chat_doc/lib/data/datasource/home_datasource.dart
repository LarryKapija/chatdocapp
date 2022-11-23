import '../database/database_service.dart';
import '../entities/response/response.dart';
import 'services/home_datasource_service.dart';
import '../api/api_client/api_client_service.dart';

class HomeDataSource implements HomeDataSourceService {
  final APIClientService apiClient;
  final DataBaseService dataBaseClient;

  HomeDataSource({
    required this.dataBaseClient,
    required this.apiClient,
  });

  @override
  Future<GetCurrentUserResponse> refreshUserFromBackend(
      String userToken) async {
    return await apiClient.getCurrentUser(userToken);
  }

  @override
  Future<GetUsersResponse> getUsersFromBackend(
      String userToken, String filter, int startIndex, int endIndex) async {
    return await apiClient.getUsers(userToken, filter, startIndex, endIndex);
  }

  @override
  Future<UserResponse> getCurrentUserProfileFromLocalDatabase() async {
    return await dataBaseClient.getCurrentUser();
  }
}
