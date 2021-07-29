part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required Password password,
    required Password loginPassword,
    required FormzStatus status,
    required FormzStatus statusLogin,
    required bool showErrorMessage,
    required bool showLoginErrorMessage,
    required Option<Either<AuthFailure, Unit>>
        changePasswordFailureOrSuccessOption,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => _ChangePasswordState(
        password: const Password.pure(),
        loginPassword: const Password.pure(),
        status: FormzStatus.pure,
        statusLogin: FormzStatus.pure,
        showErrorMessage: false,
        showLoginErrorMessage: false,
        changePasswordFailureOrSuccessOption: none(),
      );
}
