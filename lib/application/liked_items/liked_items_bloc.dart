import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/liked_items/i_liked_items_facade.dart';
import 'package:tattva/domain/liked_items/liked_items_data_model.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/injection.dart';

part 'liked_items_bloc.freezed.dart';
part 'liked_items_event.dart';
part 'liked_items_state.dart';

@lazySingleton
class LikedItemsBloc extends Bloc<LikedItemsEvent, LikedItemsState> {
  final ILikedItemsFacade _likedItemsFacade;

  LikedItemsBloc(this._likedItemsFacade) : super(LikedItemsState.initial());

  @override
  Stream<LikedItemsState> mapEventToState(
    LikedItemsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield LikedItemsState.initial();
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _likedItemsFacade.getAllLikedItems(token);
        yield state.copyWith(likedItemsOption: optionOf(response));
      },
      loadMoreAudios: (e) async* {
        yield* state.likedItemsOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (likedItems) async* {
              final audios = likedItems.likedAudios;

              if (audios.isNotEmpty && !state.completelyFetchedAudios) {
                yield state.copyWith(loadingMore: true);

                final token =
                    await getIt<IAuthFacade>().currentUser!.getIdToken();
                final response = await _likedItemsFacade.getMoreLikedAudios(
                  token: token,
                  startAfter: audios.last.id,
                );

                yield* response.fold(
                  (failure) async* {
                    yield state.copyWith(loadingMore: false);
                  },
                  (success) async* {
                    if (success.likedAudios.isEmpty) {
                      yield state.copyWith(
                        loadingMore: false,
                        completelyFetchedAudios: true,
                      );
                    } else {
                      audios.addAll(success.likedAudios);

                      yield state.copyWith(
                        loadingMore: false,
                        likedItemsOption: optionOf(
                          right(
                            likedItems.copyWith(likedAudios: audios),
                          ),
                        ),
                      );
                    }
                  },
                );
              }
            },
          ),
        );
      },
      loadMoreBlogs: (e) async* {
        yield* state.likedItemsOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (likedItems) async* {
              final blogs = likedItems.likedBlogs;

              if (blogs.isNotEmpty && !state.completelyFetchedBlogs) {
                yield state.copyWith(loadingMore: true);

                final token =
                    await getIt<IAuthFacade>().currentUser!.getIdToken();
                final response = await _likedItemsFacade.getMoreLikedBlogs(
                  token: token,
                  startAfter: blogs.last.id,
                );

                yield* response.fold(
                  (failure) async* {
                    yield state.copyWith(loadingMore: false);
                  },
                  (success) async* {
                    if (success.likedBlogs.isEmpty) {
                      yield state.copyWith(
                        loadingMore: false,
                        completelyFetchedBlogs: true,
                      );
                    } else {
                      blogs.addAll(success.likedBlogs);

                      yield state.copyWith(
                        loadingMore: false,
                        likedItemsOption: optionOf(
                          right(
                            likedItems.copyWith(likedBlogs: blogs),
                          ),
                        ),
                      );
                    }
                  },
                );
              }
            },
          ),
        );
      },
      loadMoreWallpapers: (e) async* {
        yield* state.likedItemsOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (likedItems) async* {
              final wallpapers = likedItems.likedWallpapers;

              if (wallpapers.isNotEmpty && !state.completelyFetchedWallpapers) {
                yield state.copyWith(loadingMore: true);

                final token =
                    await getIt<IAuthFacade>().currentUser!.getIdToken();
                final response = await _likedItemsFacade.getMoreLikedWallpapers(
                  token: token,
                  startAfter: wallpapers.last.id,
                );

                yield* response.fold(
                  (failure) async* {
                    yield state.copyWith(loadingMore: false);
                  },
                  (success) async* {
                    if (success.likedWallpapers.isEmpty) {
                      yield state.copyWith(
                        loadingMore: false,
                        completelyFetchedWallpapers: true,
                      );
                    } else {
                      wallpapers.addAll(success.likedWallpapers);

                      yield state.copyWith(
                        loadingMore: false,
                        likedItemsOption: optionOf(
                          right(
                            likedItems.copyWith(likedWallpapers: wallpapers),
                          ),
                        ),
                      );
                    }
                  },
                );
              }
            },
          ),
        );
      },
      dislikedAudios: (e) async* {
        yield* state.likedItemsOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (likedItems) async* {
              final audios = List<TattvaAudio>.from(likedItems.likedAudios);
              final audioIdx =
                  audios.indexWhere((element) => element.id == e.id);
              if (audioIdx >= 0) {
                final removedAudio = audios[audioIdx];
                audios.removeAt(audioIdx);
                final cachedLikedItems = state.cachedLikedItemsOption.fold(
                  () => CachedLikedItemsDataModel(
                    likedAudioIdx: [audioIdx],
                    likedAudios: [removedAudio],
                  ),
                  (cached) {
                    final cachedLikedAudios =
                        List<TattvaAudio>.from(cached.likedAudios)
                          ..add(removedAudio);
                    final cachedLikedAudioIdx =
                        List<int>.from(cached.likedAudioIdx)..add(audioIdx);
                    return cached.copyWith(
                      likedAudioIdx: cachedLikedAudioIdx,
                      likedAudios: cachedLikedAudios,
                    );
                  },
                );
                yield state.copyWith(
                  likedItemsOption:
                      optionOf(right(likedItems.copyWith(likedAudios: audios))),
                  cachedLikedItemsOption: optionOf(cachedLikedItems),
                );
              }
            },
          ),
        );
      },
      dislikedBlogs: (e) async* {
        yield* state.likedItemsOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (likedItems) async* {
              final blogs = List<Blog>.from(likedItems.likedBlogs);
              final blogIdx = blogs.indexWhere((element) => element.id == e.id);
              if (blogIdx >= 0) {
                final removedBlog = blogs[blogIdx];
                blogs.removeAt(blogIdx);
                final cachedLikedItems = state.cachedLikedItemsOption.fold(
                  () => CachedLikedItemsDataModel(
                    likedBlogIdx: [blogIdx],
                    likedBlogs: [removedBlog],
                  ),
                  (cached) {
                    final cachedLikedBlogs = List<Blog>.from(cached.likedBlogs)
                      ..add(removedBlog);
                    final cachedLikedBlogIdx =
                        List<int>.from(cached.likedBlogIdx)..add(blogIdx);
                    return cached.copyWith(
                      likedBlogIdx: cachedLikedBlogIdx,
                      likedBlogs: cachedLikedBlogs,
                    );
                  },
                );
                yield state.copyWith(
                  likedItemsOption:
                      optionOf(right(likedItems.copyWith(likedBlogs: blogs))),
                  cachedLikedItemsOption: optionOf(cachedLikedItems),
                );
              }
            },
          ),
        );
      },
      dislikedWallpapers: (e) async* {
        yield* state.likedItemsOption.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (likedItems) async* {
              final wallpapers =
                  List<Wallpaper>.from(likedItems.likedWallpapers);
              final wallpaperIdx =
                  wallpapers.indexWhere((element) => element.id == e.id);
              if (wallpaperIdx >= 0) {
                final removedWallpaper = wallpapers[wallpaperIdx];
                wallpapers.removeAt(wallpaperIdx);
                final cachedLikedItems = state.cachedLikedItemsOption.fold(
                  () => CachedLikedItemsDataModel(
                    likedWallpaperIdx: [wallpaperIdx],
                    likedWallpapers: [removedWallpaper],
                  ),
                  (cached) {
                    final cachedLikedWallpapers =
                        List<Wallpaper>.from(cached.likedWallpapers)
                          ..add(removedWallpaper);
                    final cachedLikedWallpaperIdx =
                        List<int>.from(cached.likedWallpaperIdx)
                          ..add(wallpaperIdx);
                    return cached.copyWith(
                      likedWallpaperIdx: cachedLikedWallpaperIdx,
                      likedWallpapers: cachedLikedWallpapers,
                    );
                  },
                );
                yield state.copyWith(
                  likedItemsOption: optionOf(
                      right(likedItems.copyWith(likedWallpapers: wallpapers))),
                  cachedLikedItemsOption: optionOf(cachedLikedItems),
                );
              }
            },
          ),
        );
      },
      restoredAudios: (e) async* {
        yield* state.cachedLikedItemsOption.fold(
          () async* {},
          (cachedLikedItems) async* {
            final cachedAudiosList =
                List<TattvaAudio>.from(cachedLikedItems.likedAudios);
            final cachedAudioIdxList =
                List<int>.from(cachedLikedItems.likedAudioIdx);
            final audioIdx =
                cachedAudiosList.indexWhere((element) => element.id == e.id);
            if (audioIdx >= 0) {
              final cachedAudio = cachedAudiosList[audioIdx];
              final cachedAudioIdx = cachedAudioIdxList[audioIdx];
              final likedItems = state.likedItemsOption
                  .fold(() => null, (sOrF) => sOrF.fold((l) => null, (r) => r));
              if (likedItems != null) {
                final audios = List<TattvaAudio>.from(likedItems.likedAudios);
                audios.insert(cachedAudioIdx, cachedAudio);
                cachedAudiosList.removeAt(audioIdx);
                cachedAudioIdxList.removeAt(audioIdx);

                yield state.copyWith(
                  likedItemsOption:
                      optionOf(right(likedItems.copyWith(likedAudios: audios))),
                  cachedLikedItemsOption: optionOf(cachedLikedItems.copyWith(
                    likedAudios: cachedAudiosList,
                    likedAudioIdx: cachedAudioIdxList,
                  )),
                );
              }
            }
          },
        );
      },
      restoredBlogs: (e) async* {
        yield* state.cachedLikedItemsOption.fold(
          () async* {},
          (cachedLikedItems) async* {
            final cachedBlogsList =
                List<Blog>.from(cachedLikedItems.likedBlogs);
            final cachedBlogIdxList =
                List<int>.from(cachedLikedItems.likedBlogIdx);
            final blogIdx =
                cachedBlogsList.indexWhere((element) => element.id == e.id);
            if (blogIdx >= 0) {
              final cachedBlog = cachedBlogsList[blogIdx];
              final cachedBlogIdx = cachedBlogIdxList[blogIdx];
              final likedItems = state.likedItemsOption
                  .fold(() => null, (sOrF) => sOrF.fold((l) => null, (r) => r));
              if (likedItems != null) {
                final blogs = List<Blog>.from(likedItems.likedBlogs);
                blogs.insert(cachedBlogIdx, cachedBlog);
                cachedBlogsList.removeAt(blogIdx);
                cachedBlogIdxList.removeAt(blogIdx);

                yield state.copyWith(
                  likedItemsOption:
                      optionOf(right(likedItems.copyWith(likedBlogs: blogs))),
                  cachedLikedItemsOption: optionOf(cachedLikedItems.copyWith(
                    likedBlogs: cachedBlogsList,
                    likedBlogIdx: cachedBlogIdxList,
                  )),
                );
              }
            }
          },
        );
      },
      restoredWallpapers: (e) async* {
        yield* state.cachedLikedItemsOption.fold(
          () async* {},
          (cachedLikedItems) async* {
            final cachedWallpapersList =
                List<Wallpaper>.from(cachedLikedItems.likedWallpapers);
            final cachedWallpaperIdxList =
                List<int>.from(cachedLikedItems.likedWallpaperIdx);
            final wallpaperIdx = cachedWallpapersList
                .indexWhere((element) => element.id == e.id);
            if (wallpaperIdx >= 0) {
              final cachedWallpaper = cachedWallpapersList[wallpaperIdx];
              final cachedWallpaperIdx = cachedWallpaperIdxList[wallpaperIdx];
              final likedItems = state.likedItemsOption
                  .fold(() => null, (sOrF) => sOrF.fold((l) => null, (r) => r));
              if (likedItems != null) {
                final wallpapers =
                    List<Wallpaper>.from(likedItems.likedWallpapers);
                wallpapers.insert(cachedWallpaperIdx, cachedWallpaper);
                cachedWallpapersList.removeAt(wallpaperIdx);
                cachedWallpaperIdxList.removeAt(wallpaperIdx);

                yield state.copyWith(
                  likedItemsOption: optionOf(
                      right(likedItems.copyWith(likedWallpapers: wallpapers))),
                  cachedLikedItemsOption: optionOf(cachedLikedItems.copyWith(
                    likedWallpapers: cachedWallpapersList,
                    likedWallpaperIdx: cachedWallpaperIdxList,
                  )),
                );
              }
            }
          },
        );
      },
      updatedLikedItemsList: (e) async* {
        yield state.copyWith(likedItemsOption: optionOf(right(e.data)));
      },
    );
  }
}
