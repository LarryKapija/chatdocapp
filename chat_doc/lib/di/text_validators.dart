import 'dart:async';

mixin TextValidators {
  final notNullValidator = StreamTransformer<String, bool>.fromHandlers(
      handleData: ((data, sink) => data.isNotEmpty));

  bool isEmailValid(String email) {
    var regX = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    return regX.hasMatch(email);
  }
}
