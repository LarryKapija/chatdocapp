import 'package:chat_doc/domain/translator/login_translator.dart';
import 'package:dartz/dartz.dart';

import '../../data/api/error.dart';
import '../../repository/service/login_repository_service.dart';

import 'services/login_usecase_service.dart';

class LoginUseCase implements LoginUseCaseService {
  final LoginRepositoryService repository;

  LoginUseCase({required this.repository});

  @override
  Future<Either<Failure, String>> login(String userName) async {
    var response =
        await repository.login(LoginTranslator.toSentOTPModel(userName));

    return response.map(
      (response) => LoginTranslator.toTypeString(response),
    );
  }
}
