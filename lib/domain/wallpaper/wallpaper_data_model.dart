import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_category.dart';

part 'wallpaper_data_model.freezed.dart';
part 'wallpaper_data_model.g.dart';

@freezed
class WallpaperDataModel with _$WallpaperDataModel {
  const factory WallpaperDataModel({
    @Default([]) List<WallpaperCategory> categories,
    required List<Wallpaper> wallpapers,
    required List<String> likedWallpapers,
  }) = _WallpaperDataModel;

  factory WallpaperDataModel.fromJson(Map<String, dynamic> json) =>
      _$WallpaperDataModelFromJson(json);
}
