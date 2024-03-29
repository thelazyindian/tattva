part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.reset() = _Reset;
  const factory AuthenticationEvent.setFormType(AuthFormType authFormType) =
      _SetFormType;
  const factory AuthenticationEvent.onEmailChanged(String value) =
      _OnEmailChanged;
  const factory AuthenticationEvent.onNameChanged(String value) =
      _OnNameChanged;
  const factory AuthenticationEvent.onPasswordChanged(String value) =
      _OnPasswordChanged;
  const factory AuthenticationEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthenticationEvent.updatedUser({required User user}) =
      _UpdatedUser;
  const factory AuthenticationEvent.subscribeIdTokenChanges() =
      _SubscribeIdTokenChanges;
  const factory AuthenticationEvent.loginWithEmail() = _LoginWithEmail;
  const factory AuthenticationEvent.registerWithEmail() = _RegisterWithEmail;
  const factory AuthenticationEvent.loginWithGoogle() = _LoginWithGoogle;
  const factory AuthenticationEvent.loginWithFacebook() = _LoginWithFacebook;
  const factory AuthenticationEvent.resetPassword() = _ResetPassword;
  const factory AuthenticationEvent.updateUserToken(String? token) =
      _UpdateUserToken;
}
