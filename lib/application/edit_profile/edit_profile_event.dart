part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.started() = _Started;
  const factory EditProfileEvent.onNameChanged({required String value}) =
      _OnNameChanged;
  const factory EditProfileEvent.updatedProfile() = _UpdatedProfile;
}
