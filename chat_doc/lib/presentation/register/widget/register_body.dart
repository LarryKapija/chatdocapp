part of '../register_screen.dart';

class _RegisterScreenBody extends StatelessWidget {
  const _RegisterScreenBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      bloc: BlocProvider.of(context),
      builder: (context, state) {
        var bloc = context.read<RegisterCubit>();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //
              CustomTextField(
                onChanged: (text) => bloc.changeUserName(text),
                labelText: LocaleTexts.username.tr(),
              ),

              //
              CustomTextField(
                onChanged: (text) => bloc.changeUserEmail(text),
                labelText: LocaleTexts.email.tr(),
                errorText: state is ErrorState ? state.error : '',
              ),

              //
              StreamBuilder<String>(
                stream: bloc.userNameStream,
                builder: (context, nameSnapshot) => StreamBuilder(
                  stream: bloc.userEmailStream,
                  builder: (context, emailSnapshot) => LongTextButton(
                    onPressed: _snapshotIsNotEmpty(nameSnapshot) &&
                            _snapshotIsNotEmpty(emailSnapshot)
                        ? () {
                            bloc.register(
                                emailSnapshot.data!, nameSnapshot.data!);
                          }
                        : null,
                    backgroundColor: AppColor.black,
                    textColor: AppColor.white,
                    text: LocaleTexts.register.tr(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool _snapshotIsNotEmpty(AsyncSnapshot<String> snapshot) =>
      !(snapshot.data == null || snapshot.data!.isEmpty);
}
