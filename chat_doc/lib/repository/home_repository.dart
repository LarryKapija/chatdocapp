import 'package:chat_doc/data/datasource/services/home_datasource_service.dart';
import 'package:chat_doc/data/api/error.dart';
import 'package:chat_doc/data/entities/response/response.dart';
import 'package:chat_doc/repository/service/home_repository_service.dart';
import 'package:chat_doc/util/util.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeRepository with ConnectivityMixin implements HomeRepositoryService {
  final HomeDataSourceService dataSource;

  HomeRepository({required this.dataSource});

  @override
  Future<Either<Failure, UserResponse>> getUser() async {
    try {
      var user = await dataSource.getCurrentUserProfileFromLocalDatabase();
      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetCurrentUserResponse>> refreshUser() async {
    try {
      var pref = await SharedPreferences.getInstance();

      var user = await dataSource
          .refreshUserFromBackend(pref.getString('token') ?? '');

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetUsersResponse>> searchUsers(
      String match, int startIndex, int endIndex) async {
    try {
      var pref = await SharedPreferences.getInstance();
      var user = await dataSource.getUsersFromBackend(
          pref.getString('token') ?? '', match, startIndex, endIndex);

      return Right(user);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
