import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/others.dart';
import 'package:tattva/constants/strings.dart';
import 'package:tattva/constants/styles.dart';

class ContinueWithFacebook extends StatelessWidget {
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
          'icons/facebook.svg',
          height: primaryBtnIconSize,
        ),
      ),
      style: primaryBtnStyle.copyWith(
        backgroundColor: MaterialStateProperty.all(facebookColor),
        minimumSize: MaterialStateProperty.all(btnSize),
        textStyle: MaterialStateProperty.all(
          primaryBtnTextStyle.copyWith(fontSize: authPrimaryBtnFontSize),
        ),
      ),
      label: Text(BTN_CONTINUE_WITH_FACEBOOK),
    );
  }
}
