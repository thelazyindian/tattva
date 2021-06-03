// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaState _$_$_MediaStateFromJson(Map<String, dynamic> json) {
  return _$_MediaState(
    json['mediaItem'] == null
        ? null
        : MediaItem.fromJson(json['mediaItem'] as Map<String, dynamic>),
    Duration(microseconds: json['position'] as int),
  );
}

Map<String, dynamic> _$_$_MediaStateToJson(_$_MediaState instance) =>
    <String, dynamic>{
      'mediaItem': instance.mediaItem,
      'position': instance.position.inMicroseconds,
    };
