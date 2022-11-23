import 'services/signup_datasource_service.dart';

import '../api/api_client/api_client_service.dart';

import '../entities/request/request.dart';
import '../entities/response/response.dart';

class RegisterDataSource implements RegisterDataSourceService {
  final APIClientService apiClient;

  RegisterDataSource({required this.apiClient});

  @override
  Future<RegisterUserResponse> registerUser(RegisterUserRequest request) async {
    return await apiClient.registerUser(request);
  }

  @override
  Future<CheckUserNameResponse> checkUserName(String request) async {
    return await apiClient.checkIfUserNameExists(request);
  }
}
