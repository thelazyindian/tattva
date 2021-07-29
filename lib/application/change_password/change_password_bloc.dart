import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/auth_failure.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/authentication/password.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@lazySingleton
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IAuthFacade _authFacade;

  ChangePasswordBloc(this._authFacade) : super(ChangePasswordState.initial());

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(
      onPasswordChanged: (e) async* {
        final password = Password.dirty(value: e.value);
        yield state.copyWith(
          changePasswordFailureOrSuccessOption: none(),
          password: password,
          status: Formz.validate([password]),
          showErrorMessage: false,
        );
      },
      onLoginPasswordChanged: (e) async* {
        final password = Password.dirty(value: e.value);
        yield state.copyWith(
          changePasswordFailureOrSuccessOption: none(),
          loginPassword: password,
          statusLogin: Formz.validate([password]),
          showLoginErrorMessage: false,
        );
      },
      updatePassword: (e) async* {
        if (state.status.isValid) {
          yield state.copyWith(
            changePasswordFailureOrSuccessOption: none(),
            status: FormzStatus.submissionInProgress,
          );
          final updatePassFailureOrSuccess = await _authFacade.updatePassword(
            newPassword: state.password,
          );
          debugPrint('providerData: ${_authFacade.currentUser!.providerData}');
          yield state.copyWith(
            changePasswordFailureOrSuccessOption:
                optionOf(updatePassFailureOrSuccess),
            status: FormzStatus.valid,
          );
        } else {
          yield state.copyWith(
            changePasswordFailureOrSuccessOption: none(),
            showErrorMessage: true,
          );
        }
      },
      loginWithPassword: (e) async* {
        if (state.statusLogin.isValid) {
          yield state.copyWith(
            changePasswordFailureOrSuccessOption: none(),
            statusLogin: FormzStatus.submissionInProgress,
          );
          final updatePassFailureOrSuccess =
              await _authFacade.reauthenticateAccount(
            password: state.loginPassword,
          );
          debugPrint('providerData: ${_authFacade.currentUser!.providerData}');
          yield state.copyWith(
            changePasswordFailureOrSuccessOption:
                optionOf(updatePassFailureOrSuccess),
            statusLogin: FormzStatus.valid,
          );
        } else {
          yield state.copyWith(
            changePasswordFailureOrSuccessOption: none(),
            showLoginErrorMessage: true,
          );
        }
      },
      resetLoginForm: (e) async* {
        yield state.copyWith(
          loginPassword: Password.pure(),
          statusLogin: FormzStatus.pure,
          showLoginErrorMessage: false,
        );
      },
      reset: (e) async* {
        yield ChangePasswordState.initial();
      },
    );
  }
}
