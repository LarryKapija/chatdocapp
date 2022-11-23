import 'package:chat_doc/domain/model/user.dart';
import 'package:dartz/dartz.dart';

import '../../../data/api/error.dart';

abstract class HomeUseCaseService {
  Future<Either<Failure, User>> getUser();
}
