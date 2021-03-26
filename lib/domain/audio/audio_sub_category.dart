import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/domain/core/tattva_image.dart';

part 'audio_sub_category.freezed.dart';
part 'audio_sub_category.g.dart';

@freezed
class AudioSubCategory with _$AudioSubCategory {
  const factory AudioSubCategory({
    required String id,
    required String name,
    required List<TattvaImage> banner,
    required List<TattvaAudio> audios,
  }) = _AudioSubCategory;

  factory AudioSubCategory.fromJson(Map<String, dynamic> json) =>
      _$AudioSubCategoryFromJson(json);
}
