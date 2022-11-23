import 'package:chat_doc/presentation/base/base_material_page.dart';
import 'package:chat_doc/presentation/register/register_cubit.dart';
import 'package:chat_doc/presentation/register/register_state.dart';
import 'package:chat_doc/presentation/widgets/long_text_button.dart';
import 'package:chat_doc/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../util/assets/app_theme.dart';
import '../widgets/custom_text_field.dart';

part 'widget/register_app_bar.dart';
part 'widget/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseMaterialPage(
      backgroundColor: AppColor.backGroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _RegisterAppBar(),
        body: _RegisterScreenBody(),
      ),
    );
  }
}
