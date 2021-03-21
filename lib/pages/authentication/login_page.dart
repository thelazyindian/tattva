import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:tattva/domain/authentication/auth_form_type.dart';
import 'package:tattva/injection.dart';
import 'package:formz/formz.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_facebook.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_google.dart';
import 'package:tattva/pages/authentication/widgets/custom_sliver_app_bar.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/authentication/widgets/password_field.dart';
import 'package:tattva/pages/authentication/widgets/primary_login_button.dart';
import 'package:tattva/pages/authentication/widgets/username_field.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/styles.dart';

class LoginPage extends StatefulWidget {
  final bool withEmail;

  const LoginPage({Key? key, required this.withEmail}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    getIt<AuthenticationBloc>().add(AuthenticationEvent.setFormType(
      widget.withEmail
          ? AuthFormType.loginWithEmail()
          : AuthFormType.loginWithUsername(),
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CustomSliverAppBar(title: LOGIN_TITLE),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(authPagePadding),
          child: Container(
            height: height - authPageAppBarHeight - (2 * authPagePadding),
            child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
              bloc: getIt<AuthenticationBloc>(),
              builder: (context, state) {
                final loadingRequest = state.loadingGoogleSignIn ||
                    state.loadingFacebookSignIn ||
                    state.status.isSubmissionInProgress;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.withEmail) EmailField() else UsernameField(),
                    const SizedBox(height: inputFieldsSpacing),
                    PasswordField(inLoginView: true),
                    const SizedBox(height: formBtnSpacing),
                    PrimaryLoginButton(
                      label: BTN_LOG_IN,
                      loading: state.status.isSubmissionInProgress,
                      onPressed: loadingRequest
                          ? null
                          : () {
                              if (widget.withEmail) {
                                getIt<AuthenticationBloc>()
                                    .add(AuthenticationEvent.loginWithEmail());
                              } else {
                                getIt<AuthenticationBloc>().add(
                                    AuthenticationEvent.loginWithUsername());
                              }
                            },
                    ),
                    TextButton(
                      onPressed: loadingRequest
                          ? null
                          : () {
                              Navigator.pushNamed(context, '/forgot_password');
                            },
                      child: Text(BTN_FORGOT_PASSWORD),
                      style: secondaryBtnStyle.copyWith(
                        textStyle: MaterialStateProperty.all(
                            secondaryBtnTextStyle.copyWith(
                                fontSize: authForgotPasswordBtnFontSize)),
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
                    Spacer(),
                    if (!widget.withEmail)
                      TextButton(
                        onPressed: loadingRequest
                            ? null
                            : () {
                                Navigator.pushNamed(
                                    context, '/login_with_email');
                              },
                        child: Text(BTN_LOGIN_WITH_EMAIL),
                        style: secondaryBtnStyle.copyWith(
                          textStyle: MaterialStateProperty.all(
                              secondaryBtnTextStyle.copyWith(
                                  fontSize: authSecondaryBtnFontSize)),
                        ),
                      ),
                    ContinueWithFacebook(),
                    const SizedBox(height: inputFieldsSpacing),
                    ContinueWithGoogle(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
