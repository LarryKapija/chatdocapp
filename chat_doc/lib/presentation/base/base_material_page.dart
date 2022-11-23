import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chat_doc/util/assets/app_color.dart';

class BaseMaterialPage extends StatelessWidget {
  const BaseMaterialPage({
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 0),
    this.backgroundColor = AppColor.backGroundColor,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: Padding(
        padding: padding,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            _dismiss(unfocus: context);
          },
          child: child,
        ),
      ),
    );
  }

  void _dismiss({BuildContext? unfocus}) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (unfocus != null) {
      FocusScope.of(unfocus).unfocus();
    }
  }
}
