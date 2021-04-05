// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallpaperCategory _$_$_WallpaperCategoryFromJson(Map<String, dynamic> json) {
  return _$_WallpaperCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    wallpapers: (json['wallpapers'] as List<dynamic>?)
            ?.map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_WallpaperCategoryToJson(
        _$_WallpaperCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'wallpapers': instance.wallpapers,
    };
