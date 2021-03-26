// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioCategory _$_$_AudioCategoryFromJson(Map<String, dynamic> json) {
  return _$_AudioCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    averageDurationInMin: (json['averageDurationInMin'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    coverImage: (json['coverImage'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    audioSubCategories: (json['audioSubCategories'] as List<dynamic>?)
        ?.map((e) => AudioSubCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AudioCategoryToJson(_$_AudioCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'averageDurationInMin': instance.averageDurationInMin,
      'coverImage': instance.coverImage,
      'audioSubCategories': instance.audioSubCategories,
    };
