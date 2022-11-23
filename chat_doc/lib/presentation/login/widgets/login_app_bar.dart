part of '../login_screen.dart';

class _LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _LoginAppBar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: AppColor.blue,
            ),
            child: Center(child: AppAnimation.welcome.animation()),
          ),
        ));
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(ScreenUtil.defaultSize.height / 1.7);
}
