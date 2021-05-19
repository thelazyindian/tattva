part of 'wallpaper_bloc.dart';

@freezed
class WallpaperState with _$WallpaperState {
  const factory WallpaperState({
    required Option<Either<Failure, List<WallpaperCategory>>>
        wallpaperCategoriesOption,
    required Option<WallpaperCategory> selectedCategory,
    required bool categoryLoading,
    required bool loadingMore,
    required bool expandedViewLoading,
    required Option<Either<Failure, List<Wallpaper>>> expandedViewWallpapers,
    required int wallpaperIdx,
    required Option<Failure> categoryError,
    required List<String> likedWallpapers,
  }) = _WallpaperState;

  factory WallpaperState.initial() => _WallpaperState(
        wallpaperCategoriesOption: none(),
        selectedCategory: none(),
        categoryLoading: false,
        loadingMore: false,
        expandedViewLoading: false,
        expandedViewWallpapers: none(),
        wallpaperIdx: 0,
        categoryError: none(),
        likedWallpapers: [],
      );
}
