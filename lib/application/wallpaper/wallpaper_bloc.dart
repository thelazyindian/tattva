import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_category.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';
import 'package:tattva/injection.dart';

part 'wallpaper_bloc.freezed.dart';
part 'wallpaper_event.dart';
part 'wallpaper_state.dart';

@lazySingleton
class WallpaperBloc extends Bloc<WallpaperEvent, WallpaperState> {
  final IWallpaperFacade _wallpaperFacade;

  WallpaperBloc(this._wallpaperFacade) : super(WallpaperState.initial());

  @override
  Stream<WallpaperState> mapEventToState(
    WallpaperEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield WallpaperState.initial();
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _wallpaperFacade.getWallpaperCategories(token);

        yield* response.fold(
          (failure) async* {
            yield state.copyWith(
                wallpaperCategoriesOption: optionOf(left(failure)));
          },
          (success) async* {
            final List<WallpaperCategory> allwallpaperCategories = [
              WallpaperCategory(
                id: 'all',
                name: 'All',
                wallpapers: success.wallpapers,
              ),
            ];
            allwallpaperCategories.addAll(success.categories!);

            yield state.copyWith(
              wallpaperCategoriesOption:
                  optionOf(right(allwallpaperCategories)),
              selectedCategory: optionOf(allwallpaperCategories.first),
              likedWallpapers: success.likedWallpapers,
            );
          },
        );
      },
      selectedCategory: (e) async* {
        final categories = List<WallpaperCategory>.from(state
            .wallpaperCategoriesOption
            .fold(() => [], (sOrF) => sOrF.fold((l) => [], (r) => r)));
        final categoryIdx =
            categories.indexWhere((element) => element.id == e.id);
        if (categoryIdx >= 0) {
          final currentCategory = categories[categoryIdx];
          if (currentCategory.wallpapers.isEmpty) {
            yield state.copyWith(
              categoryLoading: true,
              categoryError: none(),
              selectedCategory: optionOf(currentCategory),
            );

            final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
            final response = await _wallpaperFacade.getWallpapersFromCategory(
              token: token,
              categoryId: e.id,
            );
            yield* response.fold(
              (failure) async* {
                yield state.copyWith(
                  categoryLoading: false,
                  categoryError: optionOf(failure),
                );
              },
              (success) async* {
                categories[categoryIdx] =
                    currentCategory.copyWith(wallpapers: success.wallpapers);
                final likedWallpapers =
                    List<String>.from(state.likedWallpapers);
                likedWallpapers.addAll(success.likedWallpapers);

                yield state.copyWith(
                  categoryLoading: false,
                  wallpaperCategoriesOption: optionOf(right(categories)),
                  selectedCategory: optionOf(categories[categoryIdx]),
                  likedWallpapers: likedWallpapers,
                );
              },
            );
          } else {
            yield state.copyWith(
              categoryError: none(),
              selectedCategory: optionOf(currentCategory),
            );
          }
        }
      },
      selectedCategoryLoadMore: (e) async* {
        final categories = List<WallpaperCategory>.from(state
            .wallpaperCategoriesOption
            .fold(() => [], (sOrF) => sOrF.fold((l) => [], (r) => r)));
        final categoryIdx =
            categories.indexWhere((element) => element.id == e.id);
        if (categoryIdx >= 0) {
          final selectedCategory = categories[categoryIdx];
          if (!selectedCategory.completelyFetched) {
            yield state.copyWith(loadingMore: true);

            final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
            final Either<Failure, WallpaperDataModel> response;
            if (selectedCategory.id == 'all') {
              response = await _wallpaperFacade.getAllWallpapers(
                token: token,
                startAfter: selectedCategory.wallpapers.last.id,
              );
            } else {
              response = await _wallpaperFacade.getWallpapersFromCategory(
                token: token,
                categoryId: e.id,
                startAfter: selectedCategory.wallpapers.last.id,
              );
            }

            yield* response.fold(
              (failure) async* {
                yield state.copyWith(loadingMore: false);
              },
              (success) async* {
                if (success.wallpapers.isEmpty) {
                  categories[categoryIdx] =
                      selectedCategory.copyWith(completelyFetched: true);
                  yield state.copyWith(
                    loadingMore: false,
                    wallpaperCategoriesOption: optionOf(right(categories)),
                    selectedCategory: optionOf(categories[categoryIdx]),
                  );
                } else {
                  final wallpapers =
                      List<Wallpaper>.from(selectedCategory.wallpapers);
                  wallpapers.addAll(success.wallpapers);
                  categories[categoryIdx] =
                      selectedCategory.copyWith(wallpapers: wallpapers);
                  final likedWallpapers =
                      List<String>.from(state.likedWallpapers);
                  likedWallpapers.addAll(success.likedWallpapers);

                  yield state.copyWith(
                    loadingMore: false,
                    wallpaperCategoriesOption: optionOf(right(categories)),
                    selectedCategory: optionOf(categories[categoryIdx]),
                    likedWallpapers: likedWallpapers,
                  );
                }
              },
            );
          }
        }
      },
      likedWallpaper: (e) async* {
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        _wallpaperFacade
            .likeDislikeWallpaper(token, e.id, true)
            .then((value) => value.fold((l) {
                  final likedWallpapers =
                      List<String>.from(state.likedWallpapers);
                  likedWallpapers.removeWhere((element) => element == e.id);
                  add(WallpaperEvent.updateLikedWallpapers(
                      wallpaperIds: likedWallpapers));
                }, (r) => null));
        final likedWallpapers = List<String>.from(state.likedWallpapers);
        likedWallpapers.add(e.id);
        add(WallpaperEvent.updateLikedWallpapers(
            wallpaperIds: likedWallpapers));
      },
      dislikedWallpaper: (e) async* {
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        _wallpaperFacade
            .likeDislikeWallpaper(token, e.id, false)
            .then((value) => value.fold((l) {
                  final likedWallpapers =
                      List<String>.from(state.likedWallpapers);
                  likedWallpapers.add(e.id);
                  add(WallpaperEvent.updateLikedWallpapers(
                      wallpaperIds: likedWallpapers));
                  getIt<LikedItemsBloc>()
                      .add(LikedItemsEvent.restoredWallpapers(id: e.id));
                }, (r) => null));
        final likedWallpapers = List<String>.from(state.likedWallpapers);
        likedWallpapers.remove(e.id);
        add(WallpaperEvent.updateLikedWallpapers(
            wallpaperIds: likedWallpapers));
        getIt<LikedItemsBloc>()
            .add(LikedItemsEvent.dislikedWallpapers(id: e.id));
      },
      updateLikedWallpapers: (e) async* {
        yield state.copyWith(likedWallpapers: e.wallpaperIds);
      },
    );
  }
}
