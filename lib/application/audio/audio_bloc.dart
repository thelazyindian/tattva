import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/domain/audio/i_audio_facade.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/injection.dart';

part 'audio_bloc.freezed.dart';
part 'audio_event.dart';
part 'audio_state.dart';

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

        // TODO: Move to HomeBLOC
        final dioCacheIdx = getIt<Dio>()
            .interceptors
            .indexWhere((element) => element is DioCacheInterceptor);
        if (dioCacheIdx == -1) {
          final cacheDir = await getApplicationDocumentsDirectory();
          final options = CacheOptions(
            store: DbCacheStore(databasePath: '${cacheDir.path}/tattva'),
            policy: CachePolicy.request,
            hitCacheOnErrorExcept: [401, 403],
            priority: CachePriority.normal,
            maxStale: const Duration(days: 7),
          );
          getIt<Dio>().interceptors.add(DioCacheInterceptor(options: options));
        }

        add(AudioEvent.refreshed());
      },
      refreshed: (e) async* {
        final audioCategoriesSuccessOrFailure =
            await _audioFacade.getAudioCategories();
        yield* audioCategoriesSuccessOrFailure.fold(
          (failure) async* {
            yield state.copyWith(
              audioCategoriesOption: optionOf(left(failure)),
              selectedAudioCategory: none(),
              likedAudios: [],
            );
          },
          (success) async* {
            yield state.copyWith(
              audioCategoriesOption: optionOf(right(success.categories)),
              selectedAudioCategory: audioCategoriesSuccessOrFailure.fold(
                (failure) => none(),
                (success) => success.categories.isEmpty
                    ? none()
                    : optionOf(success.categories.first),
              ),
              likedAudios: success.likedAudios,
            );
          },
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
      likedAudio: (e) async* {
        _audioFacade
            .likeDislikeAudio(e.id, true)
            .then((value) => value.fold((l) {
                  final likedAudios = List<String>.from(state.likedAudios);
                  likedAudios.removeWhere((element) => element == e.id);
                  add(AudioEvent.updateLikedAudios(audioIds: likedAudios));
                }, (r) => null));
        final likedAudios = List<String>.from(state.likedAudios);
        likedAudios.add(e.id);
        add(AudioEvent.updateLikedAudios(audioIds: likedAudios));
      },
      dislikedAudio: (e) async* {
        _audioFacade
            .likeDislikeAudio(
              e.id,
              false,
            )
            .then((value) => value.fold((l) {
                  final likedAudios = List<String>.from(state.likedAudios);
                  likedAudios.add(e.id);
                  add(AudioEvent.updateLikedAudios(audioIds: likedAudios));
                }, (r) => null));
        final likedAudios = List<String>.from(state.likedAudios);
        likedAudios.remove(e.id);
        add(AudioEvent.updateLikedAudios(audioIds: likedAudios));
      },
      updateLikedAudios: (e) async* {
        yield state.copyWith(likedAudios: e.audioIds);
      },
    );
  }
}
