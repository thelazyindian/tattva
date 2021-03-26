import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/domain/audio/i_audio_facade.dart';
import 'package:tattva/domain/failure.dart';

part 'audio_event.dart';
part 'audio_state.dart';
part 'audio_bloc.freezed.dart';

@lazySingleton
class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final IAudioFacade _audioFacade;

  AudioBloc(this._audioFacade) : super(AudioState.initial());

  @override
  Stream<AudioState> mapEventToState(
    AudioEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield AudioState.initial();
        final audioCategoriesSuccessOrFailure =
            await _audioFacade.getAudioCategories();
        yield state.copyWith(
          audioCategoriesOption: optionOf(audioCategoriesSuccessOrFailure),
          selectedAudioCategory: audioCategoriesSuccessOrFailure.fold(
            (failure) => none(),
            (success) => success.isEmpty ? none() : optionOf(success.first),
          ),
        );
      },
      selectedAudioCategory: (e) async* {
        if (!state.loadingSubCategory) {
          if (e.audioCategory.audioSubCategories == null) {
            yield state.copyWith(
              loadingSubCategory: true,
              selectedAudioCategory: optionOf(e.audioCategory),
            );
            final audioSubCategoriesSuccessOrFailure =
                await _audioFacade.getAudioSubCategories(e.audioCategory.id);
            final audioCategoryFetched = e.audioCategory.copyWith(
              audioSubCategories: audioSubCategoriesSuccessOrFailure.fold(
                (l) => null,
                (audioSubCategories) => audioSubCategories,
              ),
            );
            final audioCategories =
                List<AudioCategory>.from(state.audioCategoriesOption.fold(
              () => [],
              (audioCategoriesSorF) =>
                  audioCategoriesSorF.fold((l) => [], (r) => r),
            ));
            final audioCategoryIdx = audioCategories
                .indexWhere((element) => element.id == audioCategoryFetched.id);
            audioCategories[audioCategoryIdx] = audioCategoryFetched;

            yield state.copyWith(
              loadingSubCategory: false,
              selectedAudioCategory: optionOf(audioCategoryFetched),
              audioCategoriesOption: optionOf(right(audioCategories)),
            );
          } else {
            yield state.copyWith(
                selectedAudioCategory: optionOf(e.audioCategory));
          }
        }
      },
    );
  }
}
