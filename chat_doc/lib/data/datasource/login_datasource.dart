import '../entities/request/request.dart';
import '../entities/response/response.dart';
import 'services/login_datasource_service.dart';

import '../api/api_client/api_client_service.dart';

class LoginDataSource implements LoginDataSourceService {
  final APIClientService apiClient;

  LoginDataSource({required this.apiClient});
  @override
  Future<SentOTPResponse> requestOTP(SentOTPRequest request) async {
    return await apiClient.sentOTP(request);
  }
}
