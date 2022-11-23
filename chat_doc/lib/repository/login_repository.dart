import 'package:chat_doc/data/datasource/services/login_datasource_service.dart';
import 'package:chat_doc/data/entities/response/response.dart';
import 'package:dartz/dartz.dart';

import 'package:chat_doc/data/api/error.dart';

import '../data/entities/request/sent_otp_request.dart';
import 'service/login_repository_service.dart';

class LoginRepository implements LoginRepositoryService {
  final LoginDataSourceService dataSource;

  LoginRepository({required this.dataSource});

  @override
  Future<Either<Failure, SentOTPResponse>> login(SentOTPRequest request) async {
    try {
      var user = await dataSource.requestOTP(request);

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
