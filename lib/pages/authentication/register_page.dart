import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:tattva/domain/authentication/auth_form_type.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/authentication/widgets/name_field.dart';
import 'package:tattva/pages/authentication/widgets/primary_login_button.dart';
import 'package:tattva/pages/authentication/widgets/username_field.dart';
import 'package:tattva/utils/dimens.dart';
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
    getIt<AuthenticationBloc>()
        .add(AuthenticationEvent.setFormType(AuthFormType.register()));
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
                  UsernameField(),
                  const SizedBox(height: inputFieldsSpacing),
                  NameField(),
                  const SizedBox(height: inputFieldsSpacing),
                  EmailField(),
                  const SizedBox(height: inputFieldsSpacing),
                  PasswordField(),
                  const SizedBox(height: formBtnSpacing),
                  PrimaryLoginButton(
                    label: BTN_REGISTER,
                    loading: state.status.isSubmissionInProgress,
                    onPressed: loadingRequest
                        ? null
                        : () {
                            getIt<AuthenticationBloc>()
                                .add(AuthenticationEvent.registerWithEmail());
                          },
                  ),
                  TextButton(
                    onPressed: loadingRequest
                        ? null
                        : () {
                            Navigator.pushNamed(context, '/login_with_email');
                          },
                    child: Text(BTN_LOGIN_WITH_EMAIL),
                    style: secondaryBtnStyle.copyWith(
                      textStyle: MaterialStateProperty.all(secondaryBtnTextStyle
                          .copyWith(fontSize: authSecondaryBtnFontSize)),
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
}
