import 'package:chat_doc/data/entities/request/register_user_request.dart';
import 'package:chat_doc/data/entities/response/register_user_response.dart';
import 'package:chat_doc/data/api/error.dart';
import 'package:chat_doc/repository/service/register_repository_service.dart';
import 'package:dartz/dartz.dart';

import '../data/datasource/services/signup_datasource_service.dart';

class RegisterRepository implements RegisterRepositoryService {
  final RegisterDataSourceService dataSource;

  const RegisterRepository({required this.dataSource});

  @override
  Future<Either<Failure, RegisterUserResponse>> register(
      RegisterUserRequest request) async {
    try {
      var response = await dataSource.registerUser(request);

      return Right(response);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
