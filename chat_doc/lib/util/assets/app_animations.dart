import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

abstract class AppAnimation {
  AppAnimation._();

  static const _assetPath = "assets/animations/";

  static AppAnimationBuilder get welcome =>
      AppAnimationBuilder('${_assetPath}welcome.json');
}

class AppAnimationBuilder {
  final String assetPath;

  AppAnimationBuilder(this.assetPath);

  Widget animation({
    Key? key,
    Animation<double>? controller,
    bool? animate,
    bool? repeat,
    bool? reverse,
  }) {
    return Lottie.asset(
      assetPath,
      key: key,
      controller: controller,
      animate: animate,
      repeat: repeat,
      reverse: reverse,
    );
  }
}
