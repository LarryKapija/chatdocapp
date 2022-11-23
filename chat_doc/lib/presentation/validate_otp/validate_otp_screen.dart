import 'package:flutter/material.dart';

import '../../util/assets/app_color.dart';
import '../base/base_material_page.dart';

class ValidateOtpScreen extends StatelessWidget {
  const ValidateOtpScreen({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return BaseMaterialPage(
        backgroundColor: AppColor.backGroundColor,
        child: Scaffold(
          // appBar: _LoginAppBar(),
          backgroundColor: Colors.transparent,
          body: Container(),
        ));
  }
}
