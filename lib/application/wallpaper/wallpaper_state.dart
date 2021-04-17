part of 'wallpaper_bloc.dart';

@freezed
class WallpaperState with _$WallpaperState {
  const factory WallpaperState({
    required Option<Either<Failure, List<WallpaperCategory>>>
        wallpaperCategoriesOption,
    required Option<WallpaperCategory> selectedCategory,
    required bool categoryLoading,
    required bool loadingMore,
    required Option<Failure> categoryError,
    required List<String> likedWallpapers,
  }) = _WallpaperState;

  factory WallpaperState.initial() => _WallpaperState(
        wallpaperCategoriesOption: none(),
        selectedCategory: none(),
        categoryLoading: false,
        loadingMore: false,
        categoryError: none(),
        likedWallpapers: [],
      );
}
