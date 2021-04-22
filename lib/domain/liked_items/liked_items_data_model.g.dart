// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_items_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikedItemsDataModel _$_$_LikedItemsDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_LikedItemsDataModel(
    likedAudios: (json['likedAudios'] as List<dynamic>?)
            ?.map((e) => TattvaAudio.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    likedWallpapers: (json['likedWallpapers'] as List<dynamic>?)
            ?.map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    likedBlogs: (json['likedBlogs'] as List<dynamic>?)
            ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_LikedItemsDataModelToJson(
        _$_LikedItemsDataModel instance) =>
    <String, dynamic>{
      'likedAudios': instance.likedAudios,
      'likedWallpapers': instance.likedWallpapers,
      'likedBlogs': instance.likedBlogs,
    };

_$Cached_LikedItemsDataModel _$_$Cached_LikedItemsDataModelFromJson(
    Map<String, dynamic> json) {
  return _$Cached_LikedItemsDataModel(
    likedAudioIdx: (json['likedAudioIdx'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
    likedAudios: (json['likedAudios'] as List<dynamic>?)
            ?.map((e) => TattvaAudio.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    likedWallpaperIdx: (json['likedWallpaperIdx'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
    likedWallpapers: (json['likedWallpapers'] as List<dynamic>?)
            ?.map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    likedBlogIdx: (json['likedBlogIdx'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [],
    likedBlogs: (json['likedBlogs'] as List<dynamic>?)
            ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$Cached_LikedItemsDataModelToJson(
        _$Cached_LikedItemsDataModel instance) =>
    <String, dynamic>{
      'likedAudioIdx': instance.likedAudioIdx,
      'likedAudios': instance.likedAudios,
      'likedWallpaperIdx': instance.likedWallpaperIdx,
      'likedWallpapers': instance.likedWallpapers,
      'likedBlogIdx': instance.likedBlogIdx,
      'likedBlogs': instance.likedBlogs,
    };
