import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/styles.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final btnSize = Size(
      width - (2 * homePaddingHorizontal),
      primaryBtnHeight,
    );
    final navigatorKeyState =
        Provider.of<GlobalKey<NavigatorState>>(context, listen: false)
            .currentState!;

    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (authFailureOrSuccess) => authFailureOrSuccess.fold(
            (failure) => null,
            (success) => navigatorKeyState.pushNamedAndRemoveUntil(
              '/home',
              (route) => false,
            ),
          ),
        );
      },
      child: Scaffold(
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
                      navigatorKeyState.pushNamed('/register');
                    },
                    style: primaryBtnStyle.copyWith(
                      minimumSize: MaterialStateProperty.all(btnSize),
                    ),
                    child: Text(BTN_REGISTER),
                  ),
                  TextButton(
                    onPressed: () {
                      navigatorKeyState.pushNamed('/login');
                    },
                    child: Text(BTN_LOGIN),
                    style: secondaryBtnStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
