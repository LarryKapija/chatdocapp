import '../../entities/request/request.dart';
import '../../entities/response/response.dart';

abstract class LoginDataSourceService {
  Future<SentOTPResponse> requestOTP(SentOTPRequest request);
}
