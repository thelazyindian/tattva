import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';

part 'liked_items_data_model.freezed.dart';
part 'liked_items_data_model.g.dart';

@freezed
class LikedItemsDataModel with _$LikedItemsDataModel {
  const factory LikedItemsDataModel({
    @Default([]) List<TattvaAudio> likedAudios,
    @Default([]) List<Wallpaper> likedWallpapers,
    @Default([]) List<Blog> likedBlogs,
  }) = _LikedItemsDataModel;

  factory LikedItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$LikedItemsDataModelFromJson(json);
}

@freezed
class CachedLikedItemsDataModel with _$CachedLikedItemsDataModel {
  const factory CachedLikedItemsDataModel({
    @Default([]) List<int> likedAudioIdx,
    @Default([]) List<TattvaAudio> likedAudios,
    @Default([]) List<int> likedWallpaperIdx,
    @Default([]) List<Wallpaper> likedWallpapers,
    @Default([]) List<int> likedBlogIdx,
    @Default([]) List<Blog> likedBlogs,
  }) = Cached_LikedItemsDataModel;

  factory CachedLikedItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$CachedLikedItemsDataModelFromJson(json);
}
