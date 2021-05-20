part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    required Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption,
    required List<String> likedAudios,
    required bool loadingSubCategory,
    required Option<AudioCategory> selectedAudioCategory,
    required Option<Either<Failure, TattvaAudio>> audioFromIdOption,
  }) = _AudioState;

  factory AudioState.initial() => AudioState(
        audioCategoriesOption: none(),
        loadingSubCategory: false,
        likedAudios: [],
        selectedAudioCategory: none(),
        audioFromIdOption: none(),
      );
}
