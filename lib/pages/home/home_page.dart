import 'package:flutter/material.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user =
        getIt<AuthenticationBloc>().state.authFailureOrSuccessOption.fold(
              () => null,
              (authFailureOrSuccess) => authFailureOrSuccess.fold(
                (l) => null,
                (success) => success,
              ),
            );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$user'),
            TextButton(
              onPressed: () {
                getIt<IAuthFacade>().signOut().then((value) => value.fold(
                      (l) => null,
                      (r) => Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/landing',
                        (route) => false,
                      ),
                    ));
              },
              child: Text('SIGN OUT'),
            ),
          ],
        ),
      ),
    );
  }
}
