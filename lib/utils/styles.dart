import 'package:flutter/material.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';

final primaryBtnShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(primaryBtnRadius),
);
final primaryBtnTextStyle = TextStyle(
  fontFamily: fontFamily,
  fontSize: primaryBtnFontSize,
  fontWeight: primaryBtnFontWeight,
  letterSpacing: primaryBtnLetterSpacing,
);

final primaryBtnStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(primaryBtnTextStyle),
  shape: MaterialStateProperty.all(primaryBtnShape),
  foregroundColor: MaterialStateProperty.all(primaryBtnTextColor),
  backgroundColor: MaterialStateProperty.all(accentColor),
);

final inputFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    style: BorderStyle.none,
  ),
  borderRadius: BorderRadius.circular(inputFieldRadius),
);

final secondaryBtnTextStyle = TextStyle(
  fontFamily: fontFamily,
  fontSize: secondaryBtnFontSize,
  fontWeight: secondaryBtnFontWeight,
  letterSpacing: secondaryBtnLetterSpacing,
);
final secondaryBtnStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all(secondaryBtnTextColor),
  textStyle: MaterialStateProperty.all(secondaryBtnTextStyle),
);
