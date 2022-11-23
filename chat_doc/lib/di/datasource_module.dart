import 'package:chat_doc/data/datasource/signup_datasource.dart';
import 'package:chat_doc/data/datasource/services/signup_datasource_service.dart';
import 'package:chat_doc/data/datasource/validate_otp_datasource.dart';
import 'package:chat_doc/di/client_module.dart';

import '../data/datasource/home_datasource.dart';
import '../data/datasource/services/home_datasource_service.dart';
import '../data/datasource/login_datasource.dart';
import '../data/datasource/services/login_datasource_service.dart';
import '../data/datasource/services/validate_otp_datasource_service.dart';

mixin DatasourceModule on ClientModule {
  /// HomeDataSource
  HomeDataSourceService get homeDataSource {
    return HomeDataSource(
      apiClient: apiClient,
      dataBaseClient: dataBaseClient,
    );
  }

  /// LoginRepository
  LoginDataSourceService get loginDataSource {
    return LoginDataSource(
      apiClient: apiClient,
    );
  }

  /// RegisterRepository
  RegisterDataSourceService get registerDataSource {
    return RegisterDataSource(apiClient: apiClient);
  }

  /// ValidateOTPRepository
  ValidateOTPDataSourceService get validateOTPDataSource {
    return ValidateOTPDataSource(apiClient: apiClient);
  }
}
