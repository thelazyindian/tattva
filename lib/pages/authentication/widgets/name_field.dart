import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';

class NameField extends StatelessWidget {
  const NameField({Key? key, this.initialValue}) : super(key: key);

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        return TextFormField(
          cursorWidth: cursorWidth,
          initialValue: initialValue,
          enabled: !(state.loadingGoogleSignIn ||
              state.loadingFacebookSignIn ||
              state.status.isSubmissionInProgress),
          decoration: InputDecoration(
            hintText: HINT_TXT_FULLNAME,
            errorText: state.showErrorMessage
                ? state.name.error == NameError.empty
                    ? EMPTY_NAME_ERROR
                    : state.name.error == NameError.invalid
                        ? INVALID_NAME_ERROR
                        : null
                : null,
          ),
          onChanged: (value) => getIt<AuthenticationBloc>()
              .add(AuthenticationEvent.onNameChanged(value)),
        );
      },
    );
  }
}
