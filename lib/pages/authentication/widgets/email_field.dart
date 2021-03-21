import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';

class EmailField extends StatelessWidget {
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
            hintText: HINT_TXT_EMAIL,
            errorText: state.showErrorMessage
                ? state.email.error == EmailError.empty
                    ? EMPTY_EMAIL_ERROR
                    : state.email.error == EmailError.invalid
                        ? INVALID_EMAIL_ERROR
                        : null
                : null,
          ),
          onChanged: (value) => getIt<AuthenticationBloc>()
              .add(AuthenticationEvent.onEmailChanged(value)),
        );
      },
    );
  }
}
