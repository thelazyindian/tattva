import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:tattva/domain/authentication/username.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';

class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        return TextFormField(
          cursorWidth: cursorWidth,
          enabled: !(state.loadingGoogleSignIn ||
              state.loadingFacebookSignIn ||
              state.status.isSubmissionInProgress),
          decoration: InputDecoration(
            hintText: HINT_TXT_USERNAME,
            errorText: state.showErrorMessage
                ? state.username.error == UsernameError.empty
                    ? EMPTY_USERNAME_ERROR
                    : state.username.error == UsernameError.invalid
                        ? INVALID_USERNAME_ERROR
                        : null
                : null,
          ),
          onChanged: (value) => getIt<AuthenticationBloc>()
              .add(AuthenticationEvent.onUsernameChanged(value)),
        );
      },
    );
  }
}
