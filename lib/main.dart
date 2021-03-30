import 'package:audio_service/audio_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/audio_page.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/audio_player/widgets/audio_player_collapsed.dart';
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
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _navigatorKey,
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        theme: appTheme,
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
      ),
    );
  }
}
