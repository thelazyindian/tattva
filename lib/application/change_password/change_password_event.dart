part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.onPasswordChanged(String value) =
      _OnPasswordChanged;
  const factory ChangePasswordEvent.onLoginPasswordChanged(String value) =
      _OnLoginPasswordChanged;
  const factory ChangePasswordEvent.updatePassword() = _UpdatePassword;
  const factory ChangePasswordEvent.loginWithPassword() = _LoginWithPassword;
  const factory ChangePasswordEvent.reset() = _Reset;
  const factory ChangePasswordEvent.resetLoginForm() = _ResetLoginForm;
}
