import 'package:flutter/material.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/strings.dart';
import 'package:tattva/constants/others.dart';
import 'package:tattva/constants/styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final btnSize = Size(
      width - (2 * homePaddingHorizontal),
      primaryBtnHeight,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset('images/logo.png'),
                const SizedBox(height: 16.0),
                Text(
                  HOME_TITLE,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: homeTitleFontWeight,
                    fontSize: homeTitleFontSize,
                    letterSpacing: homeTitleLetterSpacing,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  HOME_SUB_TITLE,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: homeSubTitleFontWeight,
                    fontSize: homeSubTitleFontSize,
                    letterSpacing: homeSubTitleLetterSpacing,
                  ),
                ),
                const SizedBox(height: 40.0),
                Text(
                  APP_NAME,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: appNameFontWeight,
                    fontSize: appNameFontSize,
                    letterSpacing: appNameLetterSpacing,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  style: primaryBtnStyle.copyWith(
                    minimumSize: MaterialStateProperty.all(btnSize),
                  ),
                  child: Text(BTN_REGISTER),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Text(BTN_LOGIN),
                  style: secondaryBtnStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
