import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';

part 'wallpaper_category.freezed.dart';
part 'wallpaper_category.g.dart';

@freezed
class WallpaperCategory with _$WallpaperCategory {
  const factory WallpaperCategory({
    required String id,
    required String name,
    @Default([]) List<Wallpaper> wallpapers,
    @Default(false) bool completelyFetched,
  }) = _WallpaperCategory;

  factory WallpaperCategory.fromJson(Map<String, dynamic> json) =>
      _$WallpaperCategoryFromJson(json);
}
