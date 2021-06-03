import 'package:flutter/material.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class TattvaFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        APP_NAME_TM,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: appNameFontWeight,
          fontSize: appNameFontSize,
          letterSpacing: appNameLetterSpacing,
        ),
      ),
    );
  }
}
