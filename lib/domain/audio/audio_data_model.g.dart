// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioDataModel _$_$_AudioDataModelFromJson(Map<String, dynamic> json) {
  return _$_AudioDataModel(
    categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => AudioCategory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    audios: (json['audios'] as List<dynamic>?)
            ?.map((e) => TattvaAudio.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    likedAudios:
        (json['likedAudios'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_AudioDataModelToJson(_$_AudioDataModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'audios': instance.audios,
      'likedAudios': instance.likedAudios,
    };
