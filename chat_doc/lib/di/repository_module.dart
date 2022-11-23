import 'package:chat_doc/di/datasource_module.dart';
import 'package:chat_doc/repository/service/home_repository_service.dart';
import 'package:chat_doc/repository/login_repository.dart';
import 'package:chat_doc/repository/service/login_repository_service.dart';
import 'package:chat_doc/repository/register_repository.dart';
import 'package:chat_doc/repository/service/register_repository_service.dart';
import 'package:chat_doc/repository/service/validate_otp_repository_service.dart';
import 'package:chat_doc/repository/validate_otp_repository.dart';

import '../repository/home_repository.dart';

mixin RepositoryModule on DatasourceModule {
  /// HomeRepository
  HomeRepositoryService get homeRepository {
    return HomeRepository(dataSource: homeDataSource);
  }

  /// LoginRepository
  LoginRepositoryService get loginRepository {
    return LoginRepository(dataSource: loginDataSource);
  }

  /// RegisterRepository
  RegisterRepositoryService get registerRepository {
    return RegisterRepository(dataSource: registerDataSource);
  }

  /// ValidateOTPRepository
  ValidateOTPRepositoryService get validateOTPRepository {
    return ValidateOTPRepository(dataSource: validateOTPDataSource);
  }
}
