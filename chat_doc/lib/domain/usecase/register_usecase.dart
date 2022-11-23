import 'package:chat_doc/data/api/error.dart';
import 'package:chat_doc/domain/model/register.dart';
import 'package:chat_doc/domain/translator/register_translator.dart';
import 'package:chat_doc/domain/usecase/services/register_usecase_service.dart';
import 'package:dartz/dartz.dart';

import '../../repository/service/register_repository_service.dart';

class RegisterUseCase implements RegisterUseCaseService {
  final RegisterRepositoryService repository;

  RegisterUseCase({required this.repository});

  @override
  Future<Either<Failure, String>> register(Register register) async {
    var response = await repository
        .register(RegisterTranslator.registerToRequest(register));

    return response.map((r) => RegisterTranslator.responseToString(r));
  }
}
