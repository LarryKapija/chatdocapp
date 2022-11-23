import 'package:chat_doc/util/util.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {}

class InitialState extends LoginState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends LoginState {
  String get error => LocaleTexts.loginError.tr();

  @override
  List<Object?> get props => [error];
}
