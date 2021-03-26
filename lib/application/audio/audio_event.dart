part of 'audio_bloc.dart';

@freezed
class AudioEvent with _$AudioEvent {
  const factory AudioEvent.started() = _Started;
  const factory AudioEvent.selectedAudioCategory(AudioCategory audioCategory) =
      _SelectedAudioCategory;
}
