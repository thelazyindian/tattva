// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallpaper _$_$_WallpaperFromJson(Map<String, dynamic> json) {
  return _$_Wallpaper(
    id: json['id'] as String,
    name: json['name'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_WallpaperToJson(_$_Wallpaper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
