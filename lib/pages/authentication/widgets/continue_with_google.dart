import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/styles.dart';

class ContinueWithGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final btnSize = Size(
      width - (2 * homePaddingHorizontal),
      primaryBtnHeight,
    );

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        return TextButton.icon(
          onPressed: state.loadingGoogleSignIn ||
                  state.loadingFacebookSignIn ||
                  state.status.isSubmissionInProgress
              ? null
              : () {
                  getIt<AuthenticationBloc>()
                      .add(AuthenticationEvent.loginWithGoogle());
                },
          icon: state.loadingGoogleSignIn
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(right: primaryBtnIconSpacing),
                  child: SvgPicture.asset(
                    'icons/google.svg',
                    height: primaryBtnIconSize,
                  ),
                ),
          style: primaryBtnStyle.copyWith(
            side: MaterialStateProperty.all(
              BorderSide(color: googleBtnBorderColor),
            ),
            textStyle: MaterialStateProperty.all(
              primaryBtnTextStyle.copyWith(fontSize: authPrimaryBtnFontSize),
            ),
            foregroundColor:
                MaterialStateProperty.all(Theme.of(context).accentColor),
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
            minimumSize: MaterialStateProperty.all(btnSize),
          ),
          label: state.loadingGoogleSignIn
              ? SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    valueColor:
                        AlwaysStoppedAnimation(Theme.of(context).accentColor),
                  )),
                )
              : Text(BTN_CONTINUE_WITH_GOOGLE),
        );
      },
    );
  }
}
