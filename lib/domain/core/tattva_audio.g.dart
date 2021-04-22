// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tattva_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TattvaAudio _$_$_TattvaAudioFromJson(Map<String, dynamic> json) {
  return _$_TattvaAudio(
    id: json['id'] as String,
    name: json['name'] as String,
    language: json['language'] as String,
    durationInMins: json['durationInMins'] as int,
    thumbnail: (json['thumbnail'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    audioFile: (json['audioFile'] as List<dynamic>)
        .map((e) => TattvaAudioFile.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_TattvaAudioToJson(_$_TattvaAudio instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'durationInMins': instance.durationInMins,
      'thumbnail': instance.thumbnail,
      'audioFile': instance.audioFile,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
