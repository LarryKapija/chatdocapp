import 'package:chat_doc/presentation/login/login_cubit.dart';
import 'package:chat_doc/presentation/register/register_cubit.dart';
import 'package:chat_doc/presentation/validate_otp/validate_otp_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:chat_doc/di/client_module.dart';
import 'package:chat_doc/di/config_module.dart';
import 'package:chat_doc/di/datasource_module.dart';
import 'package:chat_doc/di/repository_module.dart';
import 'package:chat_doc/di/usecase_module.dart';
import 'package:chat_doc/router/gen_route.dart';
import 'package:chat_doc/router/navigation_controller.dart';
import 'package:chat_doc/util/app_global.dart' as global;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>
    with
        ConfigModule,
        ClientModule,
        DatasourceModule,
        RepositoryModule,
        UseCaseModule {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => LoginCubit(loginUseCase)),
          BlocProvider(create: (_) => RegisterCubit(registerUseCase)),
          BlocProvider(create: (_) => ValidateOtpCubit(validateOTPUseCase))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          navigatorObservers: [global.navigationObserver],
          theme: global.them,
          onGenerateRoute: generateRoute,
          navigatorKey: NavigationController.globalNavigatorKey,
        ));
  }
}
