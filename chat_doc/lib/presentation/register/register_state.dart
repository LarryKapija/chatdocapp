import 'package:equatable/equatable.dart';

abstract class RegisterState extends Equatable {}

class InitialState extends RegisterState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends RegisterState {
  final String? error;

  ErrorState({required this.error});

  @override
  List<Object?> get props => [error];
}
