import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/auth_form_type.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/authentication/widgets/name_field.dart';
import 'package:tattva/pages/authentication/widgets/primary_login_button.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/styles.dart';
import 'package:formz/formz.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_facebook.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_google.dart';
import 'package:tattva/pages/authentication/widgets/custom_sliver_app_bar.dart';
import 'package:tattva/pages/authentication/widgets/password_field.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    setBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CustomSliverAppBar(
              title: REGISTER_TITLE,
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(authPagePadding),
          child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            bloc: getIt<AuthenticationBloc>(),
            builder: (context, state) {
              final loadingRequest = state.loadingGoogleSignIn ||
                  state.loadingFacebookSignIn ||
                  state.status.isSubmissionInProgress;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NameField(),
                  const SizedBox(height: inputFieldsSpacing),
                  EmailField(),
                  const SizedBox(height: inputFieldsSpacing),
                  PasswordField(
                    onFieldSubmitted: (_) => onRegisterPressed(),
                  ),
                  const SizedBox(height: formBtnSpacing),
                  PrimaryLoginButton(
                    label: BTN_REGISTER,
                    loading: state.status.isSubmissionInProgress,
                    onPressed: loadingRequest ? null : onRegisterPressed,
                  ),
                  TextButton(
                    onPressed: loadingRequest
                        ? null
                        : () {
                            final navigatorKeyState =
                                Provider.of<GlobalKey<NavigatorState>>(context,
                                        listen: false)
                                    .currentState!;

                            navigatorKeyState
                                .pushNamed('/login')
                                .then((value) => setBloc());
                          },
                    child: Text(BTN_LOGIN_WITH_EMAIL),
                    style: secondaryBtnStyle.copyWith(
                      textStyle: MaterialStateProperty.all(secondaryBtnTextStyle
                          .copyWith(fontSize: authSecondaryBtnFontSize)),
                    ),
                  ),
                  state.authFailureOrSuccessOption.fold(
                    () => Container(),
                    (authFailureOrSuccess) => authFailureOrSuccess.fold(
                      (failure) => Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          failure.msg!,
                          style: TextStyle(
                            fontSize: errorTextSize,
                            fontWeight: FontWeight.w400,
                            color: errorTextColor,
                          ),
                        ),
                      ),
                      (r) => Container(),
                    ),
                  ),
                  const SizedBox(height: inputFieldsSpacing),
                  ContinueWithFacebook(),
                  const SizedBox(height: inputFieldsSpacing),
                  ContinueWithGoogle(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  setBloc() => getIt<AuthenticationBloc>()
      .add(AuthenticationEvent.setFormType(AuthFormType.register()));

  onRegisterPressed() =>
      getIt<AuthenticationBloc>().add(AuthenticationEvent.registerWithEmail());
}
