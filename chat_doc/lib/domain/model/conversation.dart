import 'package:equatable/equatable.dart';

class Conversation extends Equatable {
  final String key;
  final String withUser;

  const Conversation({
    required this.key,
    required this.withUser,
  });

  @override
  List<Object?> get props => [
        key,
        withUser,
      ];
}
