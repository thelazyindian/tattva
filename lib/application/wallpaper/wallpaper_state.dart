part of 'wallpaper_bloc.dart';

@freezed
class WallpaperState with _$WallpaperState {
  const factory WallpaperState({
    required Option<Either<Failure, List<WallpaperCategory>>>
        wallpaperCategoriesOption,
    required Option<WallpaperCategory> selectedCategory,
    required bool categoryLoading,
    required Option<Failure> categoryError,
  }) = _WallpaperState;

  factory WallpaperState.initial() => _WallpaperState(
        wallpaperCategoriesOption: none(),
        selectedCategory: none(),
        categoryLoading: false,
        categoryError: none(),
      );
}
