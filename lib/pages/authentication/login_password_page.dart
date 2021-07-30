import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/change_password/change_password_bloc.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/base_password_field.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class LoginPasswordPage extends StatefulWidget {
  const LoginPasswordPage({Key? key}) : super(key: key);

  @override
  _LoginPasswordPageState createState() => _LoginPasswordPageState();
}

class _LoginPasswordPageState extends State<LoginPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    getIt<ChangePasswordBloc>().add(ChangePasswordEvent.resetLoginForm());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: LOGIN_WITH_PASSWORD_TITLE,
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
        bloc: getIt<ChangePasswordBloc>(),
        listener: (context, state) {
          state.changePasswordFailureOrSuccessOption.fold(
            () => null,
            (sOrF) => sOrF.fold(
              (_) => null,
              (success) {
                context.router.pop();
              },
            ),
          );
        },
        builder: (context, state) {
          final loadingRequest = state.statusLogin.isSubmissionInProgress;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(authPagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: BasePasswordField(
                    enabled: !state.statusLogin.isSubmissionInProgress,
                    errorText: state.showLoginErrorMessage
                        ? state.loginPassword.error == PasswordError.empty
                            ? EMPTY_PASSWORD_ERROR
                            : state.loginPassword.error == PasswordError.invalid
                                ? INVALID_PASSWORD_LOGIN_ERROR
                                : null
                        : null,
                    onChanged: (value) => getIt<ChangePasswordBloc>()
                        .add(ChangePasswordEvent.onLoginPasswordChanged(value)),
                    onFieldSubmitted: (_) => onSubmit(),
                  ),
                ),
                state.changePasswordFailureOrSuccessOption.fold(
                  () => Container(),
                  (sOrF) => Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: sOrF.fold(
                      (failure) => failure.maybeMap(
                        requiresRecentLogin: (_) => Container(),
                        orElse: () => Text(
                          failure.msg!,
                          style: TextStyle(
                            fontSize: errorTextSize,
                            fontWeight: FontWeight.w400,
                            color: errorTextColor,
                          ),
                        ),
                      ),
                      (_) => null,
                    ),
                  ),
                ),
                const SizedBox(height: inputFieldsSpacing),
                PrimaryButton(
                  label: SUBMIT_BUTTON,
                  loading: loadingRequest,
                  onPressed: onSubmit,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  onSubmit() =>
      getIt<ChangePasswordBloc>().add(ChangePasswordEvent.loginWithPassword());
}
