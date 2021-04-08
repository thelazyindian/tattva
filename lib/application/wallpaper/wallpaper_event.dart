part of 'wallpaper_bloc.dart';

@freezed
class WallpaperEvent with _$WallpaperEvent {
  const factory WallpaperEvent.started() = _Started;
  const factory WallpaperEvent.selectedCategory({required String id}) =
      _SelectedCategory;
  const factory WallpaperEvent.likedWallpaper({required String id}) =
      _LikedWallpaper;
  const factory WallpaperEvent.dislikedWallpaper({required String id}) =
      _DislikedWallpaper;
  const factory WallpaperEvent.updateLikedWallpapers(
      {required List<String> wallpaperIds}) = _UpdateLikedWallpapers;
}
