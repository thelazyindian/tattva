// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_sub_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioSubDataModel _$_$_AudioSubDataModelFromJson(Map<String, dynamic> json) {
  return _$_AudioSubDataModel(
    categories: (json['categories'] as List<dynamic>)
        .map((e) => AudioSubCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
    likedAudios:
        (json['likedAudios'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_AudioSubDataModelToJson(
        _$_AudioSubDataModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'likedAudios': instance.likedAudios,
    };
