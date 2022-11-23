import '../../data/entities/response/response.dart';
import '../model/model.dart';

class HomeTranslator {
  static User toUserModel(UserResponse response) {
    return User(
        name: response.name ?? '',
        email: response.email ?? '',
        conversations: response.conversations
                ?.map((e) => toConversationModel(e))
                .toList() ??
            []);
  }

  static Conversation toConversationModel(ConversationResponse response) {
    return Conversation(
      key: response.key ?? '',
      withUser: response.withUser ?? '',
    );
  }
}
