import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/domain/core/tattva_image.dart';

part 'audio_category.freezed.dart';
part 'audio_category.g.dart';

@freezed
class AudioCategory with _$AudioCategory {
  const factory AudioCategory({
    required String id,
    required String name,
    required List<String> averageDurationInMin,
    required List<TattvaImage> coverImage,
    List<AudioSubCategory>? audioSubCategories,
  }) = _AudioCategory;

  factory AudioCategory.fromJson(Map<String, dynamic> json) =>
      _$AudioCategoryFromJson(json);
}
