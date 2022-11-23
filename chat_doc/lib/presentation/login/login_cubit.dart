import 'dart:async';

import 'package:chat_doc/domain/usecase/services/login_usecase_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../router/navigation_controller.dart';
import '../../router/routes.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCaseService _useCase;

  late StreamController<String> _userNameController;

  LoginCubit(this._useCase) : super(InitialState()) {
    _userNameController = StreamController<String>();
  }

  Function(String) get changeUserName => _userNameController.sink.add;

  get userName => _userNameController.stream;

  Future doLogin(String name) async {
    var login = await _useCase.login(name);

    login.fold(
      (l) => emit(ErrorState()),
      (r) {
        NavigationController.push(
          Routes.validateOtp.routeName,
          arguments: name,
        );
      },
    );
  }

  register() {
    NavigationController.push(
      Routes.register.routeName,
    );
  }
}
