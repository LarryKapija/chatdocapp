import '../../entities/response/response.dart';

import '../../entities/request/validate_otp_request.dart';

abstract class ValidateOTPDataSourceService {
  Future<ValidateOTPResponse> validateOTP(ValidateOTPRequest request);
}
