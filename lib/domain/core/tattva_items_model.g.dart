// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tattva_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TattvaItemsModel _$_$_TattvaItemsModelFromJson(Map<String, dynamic> json) {
  return _$_TattvaItemsModel(
    audios: (json['audios'] as List<dynamic>?)
            ?.map((e) => TattvaAudio.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    wallpaper: (json['wallpaper'] as List<dynamic>?)
            ?.map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    blog: (json['blog'] as List<dynamic>?)
            ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    likedAudios: (json['likedAudios'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    likedWallpapers: (json['likedWallpapers'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    likedBlogs: (json['likedBlogs'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_TattvaItemsModelToJson(
        _$_TattvaItemsModel instance) =>
    <String, dynamic>{
      'audios': instance.audios,
      'wallpaper': instance.wallpaper,
      'blog': instance.blog,
      'likedAudios': instance.likedAudios,
      'likedWallpapers': instance.likedWallpapers,
      'likedBlogs': instance.likedBlogs,
    };
