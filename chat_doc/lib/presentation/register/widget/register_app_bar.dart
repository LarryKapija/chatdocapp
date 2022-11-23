part of '../register_screen.dart';

class _RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _RegisterAppBar();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: SafeArea(
          child: Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleTexts.register.tr(),
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColor.black,
                    ),
              ),
              AppTheme.space,
              Text(
                LocaleTexts.registerText.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          )),
        ));
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(ScreenUtil.defaultSize.height / 2.8);
}
