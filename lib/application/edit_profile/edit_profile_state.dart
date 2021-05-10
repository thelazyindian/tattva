part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required Option<Either<Failure, User>> updateProfileOption,
    required Option<Either<Failure, Unit>> sendingMailOption,
    required String displayName,
    required bool updating,
    required bool sendingMail,
  }) = _EditProfileState;

  factory EditProfileState.initial() => _EditProfileState(
        updateProfileOption: none(),
        sendingMailOption: none(),
        displayName: '',
        updating: false,
        sendingMail: false,
      );
}
