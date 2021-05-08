import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/auth_form_type.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/custom_sliver_app_bar.dart';
import 'package:tattva/pages/authentication/widgets/email_field.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  void initState() {
    getIt<AuthenticationBloc>()
        .add(AuthenticationEvent.setFormType(AuthFormType.resetPassword()));
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
            CustomSliverAppBar(title: FORGOT_PASSWORD_TITLE),
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
                    EmailField(),
                    const SizedBox(height: formBtnSpacing),
                    PrimaryButton(
                      label: BTN_RESET_PASSWORD,
                      loading: state.status.isSubmissionInProgress,
                      onPressed: loadingRequest
                          ? null
                          : () {
                              getIt<AuthenticationBloc>()
                                  .add(AuthenticationEvent.resetPassword());
                            },
                    ),
                    const SizedBox(height: 16.0),
                    state.resetPasswordFailureOrSuccessOption.fold(
                      () => Container(),
                      (resetPasswordFailureOrSuccess) =>
                          resetPasswordFailureOrSuccess.fold(
                        (failure) => Text(
                          failure.msg!,
                          style: TextStyle(
                            fontSize: errorTextSize,
                            fontWeight: FontWeight.w400,
                            color: errorTextColor,
                          ),
                        ),
                        (success) => Text(
                          RESET_PASSWORD_EMAIL_MSG,
                          style: TextStyle(
                            fontSize: successTextSize,
                            fontWeight: FontWeight.w400,
                            color: successTextColor,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
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
