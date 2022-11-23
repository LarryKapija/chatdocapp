import 'package:equatable/equatable.dart';

class Register extends Equatable {
  final String userName;
  final String userEmail;

  const Register({required this.userName, required this.userEmail});

  @override
  List<Object?> get props => [userName, userEmail];
}
