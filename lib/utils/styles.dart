import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';

final appTheme = ThemeData(
  colorScheme: ColorScheme(
    primary: accentColor,
    primaryVariant: accentColor,
    secondary: secondaryColor,
    secondaryVariant: secondaryColor,
    surface: primaryColor,
    background: primaryColor,
    error: Colors.red.shade300,
    onPrimary: accentColor,
    onSecondary: accentColor,
    onSurface: accentColor,
    onBackground: accentColor,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  primaryColor: primaryColor,
  accentColor: accentColor,
  backgroundColor: primaryColor,
  scaffoldBackgroundColor: primaryColor,
  fontFamily: fontFamily,
  textTheme: TextTheme(
    headline3: TextStyle(
      color: headline1Color,
      fontSize: headline1FontSize,
      fontWeight: headline1FontWeight,
      letterSpacing: headline1LetterSpacing,
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: inputFieldHintColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: inputFieldFillColor,
    filled: true,
    contentPadding: inputFieldContentPadding,
    hintStyle: TextStyle(
      fontFamily: fontFamily,
      color: inputFieldHintColor,
      fontSize: inputFieldFontSize,
      fontWeight: inputFieldFontWeight,
      letterSpacing: inputFieldLetterSpacing,
    ),
    enabledBorder: inputFieldBorder,
    disabledBorder: inputFieldBorder,
    focusedBorder: inputFieldBorder,
    border: inputFieldBorder,
  ),
);

final systemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: primaryColor,
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarDividerColor: Colors.grey.shade300,
);

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

final audioSubCategorySubTitleTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w600,
  color: Color(0xFF908A8A),
);
