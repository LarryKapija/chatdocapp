import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_doc/presentation/validate_otp/validate_otp_state.dart';

import '../../domain/model/validate_otp.dart';
import '../../domain/usecase/services/validate_otp_usecase_service.dart';

class ValidateOtpCubit extends Cubit<ValidateOtpState> {
  final ValidateOTPUseCaseService _useCase;

  late String _userName;

  ValidateOtpCubit(this._useCase) : super(InitialState());

  set setName(String userName) {
    _userName = userName;
  }

  Future validateOTP(String otp) async {
    var user =
        await _useCase.validateOTP(ValidateOTP(userName: _userName, otp: otp));

    user.fold((l) => null, (r) => null);
  }
}
