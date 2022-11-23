import 'package:chat_doc/data/entities/request/validate_otp_request.dart';
import 'package:chat_doc/data/entities/response/validate_otp_response.dart';
import 'package:dartz/dartz.dart';

import 'package:chat_doc/data/api/error.dart';

import '../data/datasource/services/validate_otp_datasource_service.dart';
import 'service/validate_otp_repository_service.dart';

class ValidateOTPRepository implements ValidateOTPRepositoryService {
  final ValidateOTPDataSourceService dataSource;

  ValidateOTPRepository({required this.dataSource});

  @override
  Future<Either<Failure, ValidateOTPResponse>> validateOTPRequest(
      ValidateOTPRequest request) async {
    try {
      var response = await dataSource.validateOTP(request);

      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveUserProfileToLocalDataBase() {
    throw UnimplementedError();
  }
}
