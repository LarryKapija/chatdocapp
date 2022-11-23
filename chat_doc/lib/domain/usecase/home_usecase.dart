import 'package:chat_doc/domain/model/user.dart';
import 'package:chat_doc/data/api/error.dart';
import 'package:chat_doc/domain/translator/home_translator.dart';
import 'package:chat_doc/domain/usecase/services/home_usecase_service.dart';
import 'package:chat_doc/repository/service/home_repository_service.dart';
import 'package:dartz/dartz.dart';

class HomeUseCase implements HomeUseCaseService {
  final HomeRepositoryService repository;

  HomeUseCase({required this.repository});

  @override
  Future<Either<Failure, User>> getUser() async {
    final result = await repository.getUser();

    return result.map((response) => HomeTranslator.toUserModel(response));
  }
}
