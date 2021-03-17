import 'package:flutter/material.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/strings.dart';
import 'package:tattva/constants/styles.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_facebook.dart';
import 'package:tattva/pages/authentication/widgets/continue_with_google.dart';
import 'package:tattva/pages/authentication/widgets/custom_sliver_app_bar.dart';
import 'package:tattva/pages/authentication/widgets/password.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
              title: REGISTER_TITLE,
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(authPagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                cursorWidth: cursorWidth,
                decoration: InputDecoration(
                  hintText: HINT_TXT_USERNAME,
                ),
              ),
              const SizedBox(height: inputFieldsSpacing),
              TextFormField(
                cursorWidth: cursorWidth,
                decoration: InputDecoration(
                  hintText: HINT_TXT_FULLNAME,
                ),
              ),
              const SizedBox(height: inputFieldsSpacing),
              TextFormField(
                cursorWidth: cursorWidth,
                decoration: InputDecoration(
                  hintText: HINT_TXT_EMAIL,
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
                child: Text(BTN_CONTINUE),
              ),
              TextButton(
                onPressed: () {},
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
          ),
        ),
      ),
    );
  }
}
