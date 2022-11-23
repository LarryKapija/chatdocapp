import '../../data/entities/request/register_user_request.dart';
import '../../data/entities/response/response.dart';
import 'package:dartz/dartz.dart';

import '../../data/api/error.dart';

abstract class RegisterRepositoryService {
  Future<Either<Failure, RegisterUserResponse>> register(
      RegisterUserRequest request);
}
