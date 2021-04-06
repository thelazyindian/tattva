import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/domain/wallpaper/wallpaper_category.dart';
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
        final token = getIt<AuthenticationBloc>().state.userToken!;
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
            allwallpaperCategories.addAll(success.categories);

            yield state.copyWith(
              wallpaperCategoriesOption:
                  optionOf(right(allwallpaperCategories)),
              selectedCategory: optionOf(allwallpaperCategories.first),
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

            final token = getIt<AuthenticationBloc>().state.userToken!;
            final response =
                await _wallpaperFacade.getWallpapersFromCategory(token, e.id);
            yield* response.fold(
              (failure) async* {
                yield state.copyWith(
                  categoryLoading: false,
                  categoryError: optionOf(failure),
                );
              },
              (success) async* {
                categories[categoryIdx] =
                    currentCategory.copyWith(wallpapers: success);
                yield state.copyWith(
                  categoryLoading: false,
                  wallpaperCategoriesOption: optionOf(right(categories)),
                  selectedCategory: optionOf(categories[categoryIdx]),
                );
              },
            );
          } else {
            yield state.copyWith(selectedCategory: optionOf(currentCategory));
          }
        }
      },
    );
  }
}
