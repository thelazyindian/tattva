import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/domain/audio/i_audio_facade.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
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

        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();

        final audioCategoriesSuccessOrFailure =
            await _audioFacade.getAudioCategories(token: token);
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
            final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
            final audioSubCategoriesSuccessOrFailure = await _audioFacade
                .getAudioSubCategories(token: token, id: e.audioCategory.id);

            final audioCategoryFetched = e.audioCategory.copyWith(
              audioSubCategories: audioSubCategoriesSuccessOrFailure.fold(
                (l) => null,
                (audioSubDataModel) => audioSubDataModel.categories,
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

            final likedAudiosResp = audioSubCategoriesSuccessOrFailure.fold(
              (l) => <String>[],
              (audioSubDataModel) => audioSubDataModel.likedAudios,
            );
            final likedAudios = List<String>.from(state.likedAudios);
            likedAudios.addAll(likedAudiosResp);

            yield state.copyWith(
              loadingSubCategory: false,
              selectedAudioCategory: optionOf(audioCategoryFetched),
              audioCategoriesOption: optionOf(right(audioCategories)),
              likedAudios: likedAudios,
            );
          } else {
            yield state.copyWith(
                selectedAudioCategory: optionOf(e.audioCategory));
          }
        }
      },
      likedAudio: (e) async* {
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        _audioFacade
            .likeDislikeAudio(token: token, audioId: e.id, liked: true)
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
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        _audioFacade
            .likeDislikeAudio(
              token: token,
              audioId: e.id,
              liked: false,
            )
            .then((value) => value.fold((l) {
                  final likedAudios = List<String>.from(state.likedAudios);
                  likedAudios.add(e.id);
                  add(AudioEvent.updateLikedAudios(audioIds: likedAudios));
                  getIt<LikedItemsBloc>()
                      .add(LikedItemsEvent.restoredAudios(id: e.id));
                }, (r) => null));
        final likedAudios = List<String>.from(state.likedAudios);
        likedAudios.remove(e.id);
        add(AudioEvent.updateLikedAudios(audioIds: likedAudios));
        getIt<LikedItemsBloc>().add(LikedItemsEvent.dislikedAudios(id: e.id));
      },
      updateLikedAudios: (e) async* {
        yield state.copyWith(likedAudios: e.audioIds);
      },
      audioFromId: (e) async* {
        yield state.copyWith(
          audioFromIdOption: none(),
        );
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final responseSorF = await _audioFacade.getAudioFromId(
          token: token,
          audioId: e.id,
        );

        yield* responseSorF.fold(
          (failure) async* {
            yield state.copyWith(
              audioFromIdOption: optionOf(left(failure)),
            );
          },
          (success) async* {
            final likedAudios = List<String>.from(state.likedAudios);
            if (success.likedAudios.isNotEmpty) {
              if (!likedAudios.contains(success.likedAudios.first)) {
                likedAudios.add(success.likedAudios.first);
              }
              yield state.copyWith(
                audioFromIdOption: optionOf(right(success.audios.first)),
                likedAudios: likedAudios,
              );
            }
          },
        );
      },
    );
  }
}
