import 'package:flutter/material.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class TattvaFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: APP_NAME,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: appNameFontWeight,
            fontSize: appNameFontSize,
            letterSpacing: appNameLetterSpacing,
          ),
          children: [
            TextSpan(
              text: TM_SYMBOL,
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: appNameFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
