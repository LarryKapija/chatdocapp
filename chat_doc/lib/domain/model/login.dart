import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String userName;

  const Login({required this.userName});

  @override
  List<Object?> get props => [userName];
}
