import 'package:chat_doc/data/entities/response/response.dart';
import 'package:chat_doc/domain/model/user.dart';

import '../../data/entities/request/sent_otp_request.dart';

class LoginTranslator {
  static SentOTPRequest toSentOTPModel(String userName) {
    return SentOTPRequest(userName: userName);
  }

  static String toTypeString(SentOTPResponse response) {
    return response.type ?? '';
  }

  static User toUserModel(ValidateOTPResponse validate) {
    return User(
      name: validate.value?.name ?? '',
      email: validate.value?.email ?? '',
      conversations: const [],
    );
  }
}
