import 'package:chat_doc/data/api/error.dart';
import 'package:dartz/dartz.dart';

import '../../data/entities/response/response.dart';

abstract class HomeRepositoryService {
  Future<Either<Failure, UserResponse>> getUser();

  Future<Either<Failure, GetUsersResponse>> searchUsers(
      String match, int startIndex, int endIndex);

  Future<Either<Failure, GetCurrentUserResponse>> refreshUser();
}
