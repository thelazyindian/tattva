import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/core/tattva_image.dart';

part 'wallpaper.freezed.dart';
part 'wallpaper.g.dart';

@freezed
class Wallpaper with _$Wallpaper {
  const factory Wallpaper({
    required String id,
    required String name,
    required String imageSmall,
    required String imageMedium,
    required List<TattvaImage> image,
    required String link,
    DateTime? createdAt,
  }) = _Wallpaper;

  factory Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$WallpaperFromJson(json);
}
