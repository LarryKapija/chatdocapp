part of '../login_screen.dart';

class _LoginBody extends StatelessWidget {
  const _LoginBody();

  @override
  Widget build(BuildContext context) {
    Widget text() => Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(LocaleTexts.hello.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.w800, color: AppColor.black)),
              AppTheme.space,
              Text(LocaleTexts.welcomeBack.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5),
            ],
          ),
        );
    return BlocBuilder<LoginCubit, LoginState>(
      bloc: BlocProvider.of(context),
      builder: (context, state) {
        var bloc = context.read<LoginCubit>();

        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  text(),
                  AppTheme.space,
                  CustomTextField(
                    labelText: LocaleTexts.username.tr(),
                    errorText: state is ErrorState ? state.error : null,
                    onChanged: (value) => bloc.changeUserName(value),
                  ),
                  AppTheme.space,
                  LongSnapshotTextButton(
                    stream: bloc.userName,
                    onPressed: (text) {
                      bloc.doLogin(text);
                    },
                    text: LocaleTexts.login.tr(),
                    backGroundColor: AppColor.black,
                  ),
                  LongTextButton(
                    onPressed: () {
                      bloc.register();
                    },
                    text: LocaleTexts.register.tr(),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
