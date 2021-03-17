import 'package:flutter/material.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/others.dart';
import 'package:tattva/constants/styles.dart';
import 'package:tattva/pages/authentication/login_page.dart';
import 'package:tattva/pages/authentication/register_page.dart';
import 'package:tattva/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
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
      ),
      home: HomePage(),
      routes: {
        '/register': (_) => RegisterPage(),
        '/login': (_) => LoginPage(withEmail: false),
        '/login_with_email': (_) => LoginPage(withEmail: true),
      },
    );
  }
}
