import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmailOrPassword(
          {@Default('Invalid Email or Password.') String? msg}) =
      _InvalidEmailOrPassword;
  const factory AuthFailure.invalidEmail(
      {@Default('Invalid Email.') String? msg}) = _InvalidEmail;
  const factory AuthFailure.accountAlreadyExists(
          {@Default('Account already exists.') String? msg}) =
      _AccountAlreadyExists;
  const factory AuthFailure.accountExistsWithDifferentCredential(
      {@Default('Account exists with different sign in methods.')
          String? msg}) = _AccountExistsWithDifferentCredential;
  const factory AuthFailure.weakPassword(
      {@Default('Password is too weak.') String? msg}) = _WeakPassword;
  const factory AuthFailure.accountDoesnotExist(
      {@Default("Account doesn't exist.") String? msg}) = _AccountDoesnotExist;
  const factory AuthFailure.serverError(
      {@Default('Server Error Occured.') String? msg}) = _ServerError;
}
