import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_category.dart';

part 'wallpaper_data_model.freezed.dart';
part 'wallpaper_data_model.g.dart';

@freezed
class WallpaperDataModel with _$WallpaperDataModel {
  const factory WallpaperDataModel({
    required List<WallpaperCategory> categories,
    required List<Wallpaper> wallpapers,
  }) = _WallpaperDataModel;

  factory WallpaperDataModel.fromJson(Map<String, dynamic> json) =>
      _$WallpaperDataModelFromJson(json);
}
