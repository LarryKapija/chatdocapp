import 'package:dartz/dartz.dart';

import '../../../data/api/error.dart';
import '../../model/register.dart';

abstract class RegisterUseCaseService {
  Future<Either<Failure, String>> register(Register register);
}
