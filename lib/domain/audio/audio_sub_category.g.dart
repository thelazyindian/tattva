// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioSubCategory _$_$_AudioSubCategoryFromJson(Map<String, dynamic> json) {
  return _$_AudioSubCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    banner: (json['banner'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    audios: (json['audios'] as List<dynamic>)
        .map((e) => TattvaAudio.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AudioSubCategoryToJson(
        _$_AudioSubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'banner': instance.banner,
      'audios': instance.audios,
    };
