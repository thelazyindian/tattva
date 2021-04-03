import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>()
        ..add(AuthenticationEvent.authCheckRequested()),
      listener: (_, state) {
        if (!state.checkingAuthStatus) {
          final router = context.router;
          Future.delayed(Duration(milliseconds: 500)).then(
            (value) => state.authFailureOrSuccessOption.fold(
              () => router.pushAndRemoveUntil(
                LandingWrapperRoute(),
                predicate: (_) => false,
              ),
              (authFailureOrSuccess) => authFailureOrSuccess.fold(
                (failure) => router.pushAndRemoveUntil(
                  LandingWrapperRoute(),
                  predicate: (_) => false,
                ),
                (success) => router.root.pushAndRemoveUntil(
                  HomeWrapperRoute(),
                  predicate: (_) => false,
                ),
              ),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              const SizedBox(height: 16.0),
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
        ),
      ),
    );
  }
}
