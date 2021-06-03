// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueState _$_$_QueueStateFromJson(Map<String, dynamic> json) {
  return _$_QueueState(
    (json['queue'] as List<dynamic>?)
        ?.map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['mediaItem'] == null
        ? null
        : MediaItem.fromJson(json['mediaItem'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_QueueStateToJson(_$_QueueState instance) =>
    <String, dynamic>{
      'queue': instance.queue,
      'mediaItem': instance.mediaItem,
    };
