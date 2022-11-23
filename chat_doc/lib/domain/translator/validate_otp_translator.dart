import 'package:chat_doc/data/entities/request/validate_otp_request.dart';
import 'package:chat_doc/domain/model/validate_otp.dart';

import '../model/user.dart';
import '../../data/entities/response/response.dart';

class ValidateOTPTranslator {
  static User toUserModel(ValidateOTPResponse response) {
    return User(
        name: response.value?.name ?? '',
        email: response.value?.email ?? '',
        conversations: const []);
  }

  static ValidateOTPRequest toValidateOTPRequest(ValidateOTP validateOTP) {
    return ValidateOTPRequest(
        userName: validateOTP.userName, otp: validateOTP.otp);
  }

  // static Conversation toConversationModel(ConversationResponse response) {
  //   return Conversation(
  //     key: response.key ?? '',
  //     withUser: response.withUser ?? '',
  //   );
  // }
}
