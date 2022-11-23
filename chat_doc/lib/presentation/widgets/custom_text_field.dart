import 'package:flutter/material.dart';

import '../../util/assets/app_color.dart';
import '../../util/assets/app_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.errorText = '',
    this.controller,
    this.onChanged,
  });

  final String? labelText, errorText;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(AppTheme.borderRadius),
        ),
        //
        labelStyle: const TextStyle(color: AppColor.black),
        errorStyle: const TextStyle(color: AppColor.red),

        labelText: labelText,
        errorText: errorText,
      ),
      onChanged: onChanged,
    );
  }
}
