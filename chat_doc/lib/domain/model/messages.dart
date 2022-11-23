import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String sender;
  final String message;

  const Message({
    required this.sender,
    required this.message,
  });

  @override
  List<Object?> get props => [sender, message];
}
