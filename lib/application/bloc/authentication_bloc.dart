import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/auth_failure.dart';
import 'package:tattva/domain/authentication/auth_form_type.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/domain/authentication/user.dart';
import 'package:tattva/domain/authentication/username.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._authFacade) : super(AuthenticationState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    bool canSubmitForm = state.status.isValid &&
        !state.loadingGoogleSignIn &&
        !state.loadingFacebookSignIn;
    bool canSubmitOtherLogin = !state.status.isSubmissionInProgress &&
        !state.loadingGoogleSignIn &&
        !state.loadingFacebookSignIn;
    final newState = state.copyWith(
      authFailureOrSuccessOption: none(),
      resetPasswordFailureOrSuccessOption: none(),
    );

    yield* event.map(
      setFormType: (e) async* {
        yield AuthenticationState.initial().copyWith(
          authFormType: e.authFormType,
        );
        debugPrint('${e.authFormType}');
      },
      onEmailChanged: (e) async* {
        final email = Email.dirty(value: e.value);
        yield newState.copyWith(
          email: email,
          status: _validateFields(email: email),
        );
      },
      onNameChanged: (e) async* {
        final name = Name.dirty(value: e.value);
        yield newState.copyWith(
          name: name,
          status: _validateFields(name: name),
        );
      },
      onUsernameChanged: (e) async* {
        final username = Username.dirty(value: e.value);
        yield newState.copyWith(
          username: username,
          status: _validateFields(username: username),
        );
      },
      onPasswordChanged: (e) async* {
        final password = Password.dirty(value: e.value);
        yield newState.copyWith(
          password: password,
          status: _validateFields(password: password),
        );
      },
      loginWithEmail: (e) async* {
        if (canSubmitForm) {
          yield newState.copyWith(status: FormzStatus.submissionInProgress);
          final authFailureOrSuccess = await _authFacade
              .signInWithEmailAndPassword(newState.email, newState.password);
          yield newState.copyWith(
            authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
            status: FormzStatus.valid,
          );
        } else {
          debugPrint('Valid ${newState.status.isValid}');
          yield newState.copyWith(showErrorMessage: true);
        }
      },
      loginWithUsername: (e) async* {
        if (canSubmitForm) {
          yield newState.copyWith(status: FormzStatus.submissionInProgress);
          final authFailureOrSuccess = await _authFacade
              .signInWithEmailAndPassword(newState.email, newState.password);
          yield newState.copyWith(
            authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
            status: FormzStatus.valid,
          );
        } else {
          yield newState.copyWith(showErrorMessage: true);
        }
      },
      registerWithEmail: (e) async* {
        if (canSubmitForm) {
          yield newState.copyWith(status: FormzStatus.submissionInProgress);
          final authFailureOrSuccess =
              await _authFacade.createUserWithEmailAndPassword(
            newState.name,
            newState.username,
            newState.email,
            newState.password,
          );
          yield newState.copyWith(
            authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
            status: FormzStatus.valid,
          );
        } else {
          yield newState.copyWith(showErrorMessage: true);
        }
      },
      loginWithGoogle: (e) async* {
        if (canSubmitOtherLogin) {
          yield newState.copyWith(loadingGoogleSignIn: true);
          final authFailureOrSuccess = await _authFacade.signInWithGoogle();
          yield newState.copyWith(
            authFailureOrSuccessOption: authFailureOrSuccess,
            loadingGoogleSignIn: false,
          );
        }
      },
      loginWithFacebook: (e) async* {
        if (canSubmitOtherLogin) {
          yield newState.copyWith(loadingFacebookSignIn: true);
          final authFailureOrSuccess = await _authFacade.signInWithFacebook();
          yield newState.copyWith(
            authFailureOrSuccessOption: authFailureOrSuccess,
            loadingFacebookSignIn: false,
          );
        }
      },
      authCheckRequested: (e) async* {
        yield newState.copyWith(checkingAuthStatus: true);
        final checkAuthOption = await _authFacade.getUser();

        final authCheckFailureOrNoneState = newState.copyWith(
          authFailureOrSuccessOption: none(),
          checkingAuthStatus: false,
        );

        yield* checkAuthOption.fold(
          () async* {
            yield authCheckFailureOrNoneState;
          },
          (checkAuthSuccessOrFailure) async* {
            yield* checkAuthSuccessOrFailure.fold(
              (failure) async* {
                yield authCheckFailureOrNoneState;
              },
              (success) async* {
                yield newState.copyWith(
                  authFailureOrSuccessOption: optionOf(right(success)),
                  checkingAuthStatus: false,
                );
              },
            );
          },
        );
      },
      resetPassword: (e) async* {
        if (canSubmitForm) {
          yield newState.copyWith(status: FormzStatus.submissionInProgress);
          final resetPasswordFailureOrSuccess =
              await _authFacade.resetPassword(newState.email);
          yield newState.copyWith(
            resetPasswordFailureOrSuccessOption:
                optionOf(resetPasswordFailureOrSuccess),
            status: FormzStatus.valid,
          );
        } else {
          yield newState.copyWith(showErrorMessage: true);
        }
      },
    );
  }

  FormzStatus _validateFields({
    Name? name,
    Username? username,
    Email? email,
    Password? password,
  }) {
    name ??= state.name;
    username ??= state.username;
    email ??= state.email;
    password ??= state.password;
    return state.authFormType.map(
      (value) => FormzStatus.pure,
      loginWithEmail: (_) => Formz.validate([email!, password!]),
      loginWithUsername: (_) => Formz.validate([username!, password!]),
      resetPassword: (_) => Formz.validate([email!]),
      register: (_) => Formz.validate([
        name!,
        username!,
        email!,
        password!,
      ]),
    );
  }
}
