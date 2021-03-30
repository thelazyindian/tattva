import 'package:audio_service/audio_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/audio_page.dart';
import 'package:tattva/pages/authentication/forgot_password_page.dart';
import 'package:tattva/pages/authentication/login_page.dart';
import 'package:tattva/pages/authentication/register_page.dart';
import 'package:tattva/pages/edit_profile/edit_profile_page.dart';
import 'package:tattva/pages/home/home_page.dart';
import 'package:tattva/pages/landing/landing_page.dart';
import 'package:tattva/pages/profile/profile_page.dart';
import 'package:tattva/pages/splash/splash_page.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();
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
      home: SplashPage(),
      routes: {
        '/landing': (_) => LandingPage(),
        '/home': (_) => AudioServiceWidget(child: AudioPage()),
        '/register': (_) => RegisterPage(),
        '/login': (_) => LoginPage(),
        '/forgot_password': (_) => ForgotPassword(),
        '/edit_profile': (_) => EditProfilePage(),
        '/profile': (_) => ProfilePage(),
        '/audios': (_) => AudioPage(),
      },
    );
  }
}
