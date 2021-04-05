// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallpaperDataModel _$_$_WallpaperDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_WallpaperDataModel(
    categories: (json['categories'] as List<dynamic>)
        .map((e) => WallpaperCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    wallpapers: (json['wallpapers'] as List<dynamic>)
        .map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WallpaperDataModelToJson(
        _$_WallpaperDataModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'wallpapers': instance.wallpapers,
    };
