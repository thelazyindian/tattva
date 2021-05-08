part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required Option<Either<Failure, User>> updateProfileOption,
    required String displayName,
    required bool updating,
  }) = _EditProfileState;

  factory EditProfileState.initial() => _EditProfileState(
        updateProfileOption: none(),
        displayName: '',
        updating: false,
      );
}
