import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';

part 'search_items.freezed.dart';
part 'search_items.g.dart';

@freezed
class SearchItems with _$SearchItems {
  const factory SearchItems({
    required List<TattvaAudio> audios,
    required List<Wallpaper> wallpapers,
    required List<Blog> blogs,
    required int page,
    required int nbHits,
    required int nbPages,
    required int hitsPerPage,
  }) = _SearchItems;

  factory SearchItems.fromJson(Map<String, dynamic> json) =>
      _$SearchItemsFromJson(json);
}
