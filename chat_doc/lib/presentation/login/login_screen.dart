import 'package:chat_doc/presentation/base/base_material_page.dart';
import 'package:chat_doc/presentation/widgets/long_snapshot_text_button.dart';
import 'package:chat_doc/util/assets/app_theme.dart';
import 'package:chat_doc/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../util/assets/app_animations.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/long_text_button.dart';
import 'login_cubit.dart';
import 'login_state.dart';

part 'widgets/login_app_bar.dart';
part 'widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseMaterialPage(
        backgroundColor: AppColor.backGroundColor,
        child: Scaffold(
          appBar: _LoginAppBar(),
          backgroundColor: Colors.transparent,
          body: _LoginBody(),
        ));
  }
}
