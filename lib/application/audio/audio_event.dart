part of 'audio_bloc.dart';

@freezed
class AudioEvent with _$AudioEvent {
  const factory AudioEvent.started() = _Started;
  const factory AudioEvent.refreshed() = _Refreshed;
  const factory AudioEvent.selectedAudioCategory(AudioCategory audioCategory) =
      _SelectedAudioCategory;
  const factory AudioEvent.likedAudio({required String id}) = _LikedAudio;
  const factory AudioEvent.dislikedAudio({required String id}) = _DislikedAudio;
  const factory AudioEvent.updateLikedAudios({required List<String> audioIds}) =
      _UpdateLikedAudios;
}
