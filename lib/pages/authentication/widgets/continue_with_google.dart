import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/others.dart';
import 'package:tattva/constants/strings.dart';
import 'package:tattva/constants/styles.dart';

class ContinueWithGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final btnSize = Size(
      width - (2 * homePaddingHorizontal),
      primaryBtnHeight,
    );

    return TextButton.icon(
      onPressed: () {},
      icon: Padding(
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
      label: Text(BTN_CONTINUE_WITH_GOOGLE),
    );
  }
}
