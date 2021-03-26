part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    required Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption,
    required bool loadingSubCategory,
    required Option<AudioCategory> selectedAudioCategory,
  }) = _AudioState;

  factory AudioState.initial() => AudioState(
        audioCategoriesOption: none(),
        loadingSubCategory: false,
        selectedAudioCategory: none(),
      );
}
