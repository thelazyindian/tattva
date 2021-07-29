import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tattva/application/change_password/change_password_bloc.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/authentication/widgets/base_password_field.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/primary_button.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';
import 'package:tattva/utils/strings.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    getIt<ChangePasswordBloc>().add(ChangePasswordEvent.reset());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: PROFILE_ITEM_CHANGE_PASSWORD,
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
        bloc: getIt<ChangePasswordBloc>(),
        listenWhen: (prev, curr) =>
            prev.changePasswordFailureOrSuccessOption !=
            curr.changePasswordFailureOrSuccessOption,
        listener: (context, state) {
          state.changePasswordFailureOrSuccessOption.fold(
            () => null,
            (sOrF) {
              _formKey.currentState!.reset();
              sOrF.fold(
                (failure) {
                  failure.maybeMap(
                    requiresRecentLogin: (e) {
                      context.router.push(LoginPasswordRoute());
                    },
                    orElse: () {},
                  );
                },
                (success) {},
              );
            },
          );
        },
        builder: (context, state) {
          final loadingRequest = state.status.isSubmissionInProgress;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(authPagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: BasePasswordField(
                    enabled: !state.status.isSubmissionInProgress,
                    helperText: PASSWORD_HELPER,
                    errorText: state.showErrorMessage
                        ? state.password.error == PasswordError.empty
                            ? EMPTY_PASSWORD_ERROR
                            : state.password.error == PasswordError.invalid
                                ? INVALID_PASSWORD_ERROR
                                : null
                        : null,
                    onChanged: (value) => getIt<ChangePasswordBloc>()
                        .add(ChangePasswordEvent.onPasswordChanged(value)),
                    onFieldSubmitted: (_) => onSubmit(),
                  ),
                ),
                state.changePasswordFailureOrSuccessOption.fold(
                  () => Container(),
                  (sOrF) => Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: sOrF.fold(
                      (failure) => Text(
                        failure.msg!,
                        style: TextStyle(
                          fontSize: errorTextSize,
                          fontWeight: FontWeight.w400,
                          color: errorTextColor,
                        ),
                      ),
                      (success) => Text(
                        CHANGE_PASSWORD_SUCCESS,
                        style: TextStyle(
                          fontSize: successTextSize,
                          fontWeight: FontWeight.w400,
                          color: successTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: inputFieldsSpacing),
                PrimaryButton(
                  label: SUBMIT_BUTTON,
                  loading: loadingRequest,
                  onPressed: onSubmit,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  onSubmit() =>
      getIt<ChangePasswordBloc>().add(ChangePasswordEvent.updatePassword());
}
