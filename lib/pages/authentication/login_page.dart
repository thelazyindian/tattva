import 'package:flutter/material.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/strings.dart';
import 'package:tattva/constants/styles.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_facebook.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_google.dart';
import 'package:tattva/pages/authentication/widgets/custom_sliver_app_bar.dart';
import 'package:tattva/pages/authentication/widgets/password.dart';

class LoginPage extends StatelessWidget {
  final bool withEmail;

  const LoginPage({Key? key, required this.withEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final btnSize = Size(
      width - (2 * homePaddingHorizontal),
      primaryBtnHeight,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CustomSliverAppBar(
              title: LOGIN_TITLE,
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(authPagePadding),
          child: Container(
            height: height - authPageAppBarHeight - (2 * authPagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (withEmail)
                  TextFormField(
                    cursorWidth: cursorWidth,
                    decoration: InputDecoration(
                      hintText: HINT_TXT_EMAIL,
                    ),
                  )
                else
                  TextFormField(
                    cursorWidth: cursorWidth,
                    decoration: InputDecoration(
                      hintText: HINT_TXT_USERNAME,
                    ),
                  ),
                const SizedBox(height: inputFieldsSpacing),
                Password(),
                const SizedBox(height: formBtnSpacing),
                TextButton(
                  onPressed: () {},
                  style: primaryBtnStyle.copyWith(
                    minimumSize: MaterialStateProperty.all(btnSize),
                  ),
                  child: Text(BTN_LOG_IN),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(BTN_FORGOT_PASSWORD),
                  style: secondaryBtnStyle.copyWith(
                    textStyle: MaterialStateProperty.all(secondaryBtnTextStyle
                        .copyWith(fontSize: authForgotPasswordBtnFontSize)),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(BTN_LOGIN_WITH_EMAIL),
                  style: secondaryBtnStyle.copyWith(
                    textStyle: MaterialStateProperty.all(secondaryBtnTextStyle
                        .copyWith(fontSize: authSecondaryBtnFontSize)),
                  ),
                ),
                ContinueWithFacebook(),
                const SizedBox(height: inputFieldsSpacing),
                ContinueWithGoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
