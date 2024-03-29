import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';

class EmailField extends StatelessWidget {
  final String? initialValue;
  final bool? enabled;
  final Widget? suffixIcon;

  const EmailField({
    Key? key,
    this.initialValue,
    this.enabled,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        final _enabled = enabled ??
            !(state.loadingGoogleSignIn ||
                state.loadingFacebookSignIn ||
                state.status.isSubmissionInProgress);
        return TextFormField(
          cursorWidth: cursorWidth,
          initialValue: initialValue,
          enabled: _enabled,
          style: TextStyle(
            color: _enabled ? null : Colors.black54,
          ),
          decoration: InputDecoration(
            hintText: HINT_TXT_EMAIL,
            errorText: state.showErrorMessage
                ? state.email.error == EmailError.empty
                    ? EMPTY_EMAIL_ERROR
                    : state.email.error == EmailError.invalid
                        ? INVALID_EMAIL_ERROR
                        : null
                : null,
            suffix: suffixIcon,
          ),
          textInputAction: TextInputAction.next,
          onChanged: (value) => getIt<AuthenticationBloc>()
              .add(AuthenticationEvent.onEmailChanged(value)),
        );
      },
    );
  }
}
