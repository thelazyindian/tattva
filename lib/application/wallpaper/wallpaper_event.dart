part of 'wallpaper_bloc.dart';

@freezed
class WallpaperEvent with _$WallpaperEvent {
  const factory WallpaperEvent.started() = _Started;
  const factory WallpaperEvent.reset() = _Reset;
  const factory WallpaperEvent.selectedCategory({required String id}) =
      _SelectedCategory;
  const factory WallpaperEvent.selectedCategoryLoadMore({required String id}) =
      _SelectedCategoryLoadMore;
  const factory WallpaperEvent.likedWallpaper({required String id}) =
      _LikedWallpaper;
  const factory WallpaperEvent.dislikedWallpaper({required String id}) =
      _DislikedWallpaper;
  const factory WallpaperEvent.wallpaperFromId({required String id}) =
      _GetWallpaperFromId;
  const factory WallpaperEvent.expandedWallpapers({
    required List<Wallpaper> wallpapers,
    required int wallpaperIdx,
  }) = _ExpandedWallpapers;
  const factory WallpaperEvent.updateLikedWallpapers(
      {required List<String> wallpaperIds}) = _UpdateLikedWallpapers;
}
