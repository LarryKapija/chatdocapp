import 'package:chat_doc/data/api/error.dart';
import 'package:dartz/dartz.dart';

abstract class LoginUseCaseService {
  Future<Either<Failure, String>> login(String userName);
}
