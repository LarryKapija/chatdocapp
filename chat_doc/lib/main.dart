import 'package:chat_doc/util/util.dart';
import 'package:flutter/cupertino.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(EasyLocalization(
    supportedLocales: const [AppLocales.en, AppLocales.es],
    path: AppLocales.path,
    fallbackLocale: AppLocales.es,
    child: const MyApp(),
  ));
}
