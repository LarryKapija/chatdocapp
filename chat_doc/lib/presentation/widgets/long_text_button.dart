import 'package:chat_doc/util/util.dart';
import 'package:flutter/material.dart';

import '../../util/assets/app_theme.dart';

class LongTextButton extends StatelessWidget {
  const LongTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor = Colors.transparent,
    this.textColor = AppColor.blue,
  });

  final Function()? onPressed;
  final String text;
  final Color backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(AppTheme.borderRadius),
        ),
        backgroundColor: backgroundColor,
        minimumSize: const Size.fromHeight(55), // NEW
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
