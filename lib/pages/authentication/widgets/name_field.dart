import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/strings.dart';

class NameField extends StatelessWidget {
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final bool? enabled;
  final TextInputAction textInputAction;

  const NameField({
    Key? key,
    this.initialValue,
    required this.onChanged,
    this.enabled,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      builder: (context, state) {
        return TextFormField(
          cursorWidth: cursorWidth,
          initialValue: initialValue,
          enabled: enabled ??
              !(state.loadingGoogleSignIn ||
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
          textInputAction: textInputAction,
          onChanged: onChanged,
        );
      },
    );
  }
}
