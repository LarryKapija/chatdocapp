import 'package:chat_doc/config/app_config_type.dart';

class AppConfig with AppConfigType {
  static final AppConfig shared = AppConfig._instance();

  factory AppConfig() {
    return shared;
  }

  AppConfig._instance();

  @override
  String get baseDomain => 'https://chatdoc.jorgepaniagua.com';
}
