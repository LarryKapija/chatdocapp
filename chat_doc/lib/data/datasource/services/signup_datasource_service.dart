import '../../entities/request/request.dart';
import '../../entities/response/response.dart';

abstract class RegisterDataSourceService {
  Future<RegisterUserResponse> registerUser(RegisterUserRequest request);

  Future<CheckUserNameResponse> checkUserName(String request);
}
