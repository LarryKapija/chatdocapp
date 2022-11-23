import 'package:dartz/dartz.dart';

import '../../data/entities/request/validate_otp_request.dart';
import '../../data/entities/response/response.dart';

import '../../data/api/error.dart';

abstract class ValidateOTPRepositoryService {
  Future<Either<Failure, ValidateOTPResponse>> validateOTPRequest(
      ValidateOTPRequest request);

  Future<Either<Failure, void>> saveUserProfileToLocalDataBase();
}
