import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/core/tattva_image.dart';

part 'wallpaper.freezed.dart';
part 'wallpaper.g.dart';

@freezed
class Wallpaper with _$Wallpaper {
  const factory Wallpaper({
    required String id,
    required String name,
    required List<TattvaImage> image,
  }) = _Wallpaper;

  factory Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$WallpaperFromJson(json);
}
