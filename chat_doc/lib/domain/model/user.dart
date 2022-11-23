import 'conversation.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String email;

  String get photoUrl {
    return '/download-profile-picture/$name';
  }

  final List<Conversation> conversations;

  const User({
    required this.name,
    required this.email,
    required this.conversations,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        photoUrl,
        conversations,
      ];
}
