import 'package:dartz/dartz.dart';

import '../../data/api/error.dart';
import '../model/user.dart';
import '../model/validate_otp.dart';
import '../translator/validate_otp_translator.dart';
import '../../repository/service/validate_otp_repository_service.dart';
import 'services/validate_otp_usecase_service.dart';

class ValidateOTPUseCase implements ValidateOTPUseCaseService {
  final ValidateOTPRepositoryService repository;

  ValidateOTPUseCase({required this.repository});

  @override
  Future<Either<Failure, User>> validateOTP(ValidateOTP validateOTP) async {
    var response = await repository.validateOTPRequest(
        ValidateOTPTranslator.toValidateOTPRequest(validateOTP));

    return response
        .map((response) => ValidateOTPTranslator.toUserModel(response));
  }
}
