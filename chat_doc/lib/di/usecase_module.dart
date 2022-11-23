import 'package:chat_doc/di/repository_module.dart';
import 'package:chat_doc/domain/usecase/login_usecase.dart';
import 'package:chat_doc/domain/usecase/register_usecase.dart';
import 'package:chat_doc/domain/usecase/validate_otp_usecase.dart';

import '../domain/usecase/home_usecase.dart';

mixin UseCaseModule on RepositoryModule {
  /// HomeUseCase
  HomeUseCase get homeUseCase {
    return HomeUseCase(repository: homeRepository);
  }

  /// LoginUseCase
  LoginUseCase get loginUseCase {
    return LoginUseCase(repository: loginRepository);
  }

  /// RegisterUseCase
  RegisterUseCase get registerUseCase {
    return RegisterUseCase(repository: registerRepository);
  }

  ValidateOTPUseCase get validateOTPUseCase {
    return ValidateOTPUseCase(repository: validateOTPRepository);
  }
}
