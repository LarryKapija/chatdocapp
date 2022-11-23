import 'package:chat_doc/data/entities/response/response.dart';

import '../../data/entities/request/register_user_request.dart';
import '../model/register.dart';

class RegisterTranslator {
  static RegisterUserRequest registerToRequest(Register register) {
    return RegisterUserRequest(
      name: register.userName,
      email: register.userEmail,
    );
  }

  static String responseToString(RegisterUserResponse response) {
    return response.type ?? '';
  }
}
