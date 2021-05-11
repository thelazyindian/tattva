// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallpaper _$_$_WallpaperFromJson(Map<String, dynamic> json) {
  return _$_Wallpaper(
    id: json['id'] as String,
    name: json['name'] as String,
    imageSmall: json['imageSmall'] as String,
    imageMedium: json['imageMedium'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_WallpaperToJson(_$_Wallpaper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageSmall': instance.imageSmall,
      'imageMedium': instance.imageMedium,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
