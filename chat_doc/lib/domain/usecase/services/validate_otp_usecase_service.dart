import 'package:chat_doc/domain/model/user.dart';
import 'package:chat_doc/domain/model/validate_otp.dart';
import 'package:dartz/dartz.dart';

import '../../../data/api/error.dart';

abstract class ValidateOTPUseCaseService {
  Future<Either<Failure, User>> validateOTP(ValidateOTP validateOTP);
}
