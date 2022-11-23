import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../router/navigation_controller.dart';
import '../../router/routes.dart';
import 'register_state.dart';
import '../../util/util.dart';
import '../../di/text_validators.dart';
import '../../domain/model/register.dart';
import '../../domain/usecase/services/register_usecase_service.dart';

class RegisterCubit extends Cubit<RegisterState> with TextValidators {
  final RegisterUseCaseService _useCase;

  late StreamController<String> _userNameController;
  late StreamController<String> _userEmailController;

  RegisterCubit(this._useCase) : super(InitialState()) {
    _userEmailController = StreamController<String>();
    _userNameController = StreamController<String>();
  }

  Function(String) get changeUserName => _userNameController.sink.add;
  Function(String) get changeUserEmail => _userEmailController.sink.add;

  Stream<String> get userNameStream => _userNameController.stream;
  Stream<String> get userEmailStream => _userEmailController.stream;

  Future register(String email, String name) async {
    if (!isEmailValid(email)) {
      emit(ErrorState(error: LocaleTexts.notValidemail.tr()));
      return;
    }
    var register = Register(userEmail: email, userName: name);

    var result = await _useCase.register(register);

    result.fold(
      (l) => emit(ErrorState(error: LocaleTexts.loginError.tr())),
      (r) {
        NavigationController.push(
          Routes.validateOtp.routeName,
          arguments: name,
        );
      },
    );
  }
}
