part of 'wallpaper_bloc.dart';

@freezed
class WallpaperEvent with _$WallpaperEvent {
  const factory WallpaperEvent.started() = _Started;
  const factory WallpaperEvent.selectedCategory({required String id}) =
      _SelectedCategory;
}
