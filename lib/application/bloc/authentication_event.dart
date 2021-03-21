part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.setFormType(AuthFormType authFormType) =
      _SetFormType;
  const factory AuthenticationEvent.onEmailChanged(String value) =
      _OnEmailChanged;
  const factory AuthenticationEvent.onNameChanged(String value) =
      _OnNameChanged;
  const factory AuthenticationEvent.onUsernameChanged(String value) =
      _OnUsernameChanged;
  const factory AuthenticationEvent.onPasswordChanged(String value) =
      _OnPasswordChanged;
  const factory AuthenticationEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthenticationEvent.loginWithEmail() = _LoginWithEmail;
  const factory AuthenticationEvent.loginWithUsername() = _LoginWithUsername;
  const factory AuthenticationEvent.registerWithEmail() = _RegisterWithEmail;
  const factory AuthenticationEvent.loginWithGoogle() = _LoginWithGoogle;
  const factory AuthenticationEvent.loginWithFacebook() = _LoginWithFacebook;
  const factory AuthenticationEvent.resetPassword() = _ResetPassword;
}
