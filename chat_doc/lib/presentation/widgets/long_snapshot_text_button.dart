import 'package:flutter/material.dart';

import '../../util/util.dart';
import '../../util/assets/app_theme.dart';

class LongSnapshotTextButton extends StatelessWidget {
  const LongSnapshotTextButton({
    super.key,
    required this.onPressed,
    this.text = '',
    this.backGroundColor = AppColor.black,
    required this.stream,
  });

  final Function(String) onPressed;

  final Stream<String> stream;

  final String text;

  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: stream,
        builder: (context, snapshot) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(AppTheme.borderRadius),
                ),
                backgroundColor: AppColor.black,
                minimumSize: const Size.fromHeight(55), // NEW
              ),
              onPressed: snapshot.data == null || snapshot.data!.isEmpty
                  ? null
                  : () => onPressed(snapshot.data!),
              child: Text(text),
            ));
  }
}
