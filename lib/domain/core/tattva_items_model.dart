import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';

part 'tattva_items_model.freezed.dart';
part 'tattva_items_model.g.dart';

@freezed
class TattvaItemsModel with _$TattvaItemsModel {
  const factory TattvaItemsModel({
    @Default([]) List<TattvaAudio> audios,
    @Default([]) List<Wallpaper> wallpaper,
    @Default([]) List<Blog> blog,
    @Default([]) List<String> likedAudios,
    @Default([]) List<String> likedWallpapers,
    @Default([]) List<String> likedBlogs,
  }) = _TattvaItemsModel;

  factory TattvaItemsModel.fromJson(Map<String, dynamic> json) =>
      _$TattvaItemsModelFromJson(json);
}
