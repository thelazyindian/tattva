import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/bloc/authentication_bloc.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:formz/formz.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, this.inLoginView = false}) : super(key: key);

  final bool inLoginView;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        return TextFormField(
          cursorWidth: cursorWidth,
          obscureText: !_showPassword,
          enabled: !(state.loadingGoogleSignIn ||
              state.loadingFacebookSignIn ||
              state.status.isSubmissionInProgress),
          decoration: InputDecoration(
            hintText: HINT_TXT_PASSWORD,
            helperText: widget.inLoginView ? null : PASSWORD_HELPER,
            errorText: state.showErrorMessage
                ? state.password.error == PasswordError.empty
                    ? EMPTY_PASSWORD_ERROR
                    : state.password.error == PasswordError.invalid
                        ? INVALID_PASSWORD_ERROR
                        : null
                : null,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              splashColor: Colors.transparent,
              icon: SvgPicture.asset(
                _showPassword
                    ? 'icons/password_show.svg'
                    : 'icons/password_hide.svg',
              ),
            ),
          ),
          onChanged: (value) => getIt<AuthenticationBloc>()
              .add(AuthenticationEvent.onPasswordChanged(value)),
        );
      },
    );
  }
}
