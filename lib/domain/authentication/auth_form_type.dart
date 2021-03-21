import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_type.freezed.dart';

@freezed
class AuthFormType with _$AuthFormType {
  const factory AuthFormType() = _AuthFormType;
  const factory AuthFormType.loginWithEmail() = _LoginWithEmail;
  const factory AuthFormType.loginWithUsername() = _LoginWithUsername;
  const factory AuthFormType.register() = _Register;
  const factory AuthFormType.resetPassword() = _ResetPassword;
}
