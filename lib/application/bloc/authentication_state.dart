part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required AuthFormType authFormType,
    required Name name,
    required Username username,
    required Email email,
    required Password password,
    required FormzStatus status,
    required bool showErrorMessage,
    required bool checkingAuthStatus,
    required bool loadingGoogleSignIn,
    required bool loadingFacebookSignIn,
    required Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>>
        resetPasswordFailureOrSuccessOption,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => _AuthenticationState(
        authFormType: AuthFormType(),
        name: const Name.pure(),
        username: const Username.pure(),
        email: const Email.pure(),
        password: const Password.pure(),
        status: FormzStatus.pure,
        showErrorMessage: false,
        checkingAuthStatus: false,
        loadingGoogleSignIn: false,
        loadingFacebookSignIn: false,
        authFailureOrSuccessOption: none(),
        resetPasswordFailureOrSuccessOption: none(),
      );
}
