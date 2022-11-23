import 'package:chat_doc/data/api/error.dart';
import 'package:chat_doc/data/entities/response/response.dart';

import 'package:dartz/dartz.dart';

import '../../data/entities/request/sent_otp_request.dart';

abstract class LoginRepositoryService {
  Future<Either<Failure, SentOTPResponse>> login(SentOTPRequest request);
}
