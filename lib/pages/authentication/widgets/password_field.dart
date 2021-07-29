import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/base_password_field.dart';
import 'package:tattva/utils/strings.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {Key? key, this.inLoginView = false, this.onFieldSubmitted})
      : super(key: key);

  final bool inLoginView;
  final Function(String)? onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        return BasePasswordField(
          enabled: !(state.loadingGoogleSignIn ||
              state.loadingFacebookSignIn ||
              state.status.isSubmissionInProgress),
          helperText: widget.inLoginView ? null : PASSWORD_HELPER,
          errorText: state.showErrorMessage
              ? state.password.error == PasswordError.empty
                  ? EMPTY_PASSWORD_ERROR
                  : state.password.error == PasswordError.invalid
                      ? widget.inLoginView
                          ? INVALID_PASSWORD_LOGIN_ERROR
                          : INVALID_PASSWORD_ERROR
                      : null
              : null,
          onChanged: (value) => getIt<AuthenticationBloc>()
              .add(AuthenticationEvent.onPasswordChanged(value)),
          onFieldSubmitted: widget.onFieldSubmitted,
        );
      },
    );
  }
}
