// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_player_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioPlayerState _$_$_AudioPlayerStateFromJson(Map<String, dynamic> json) {
  return _$_AudioPlayerState(
    queueState: json['queueState'] == null
        ? null
        : QueueState.fromJson(json['queueState'] as Map<String, dynamic>),
    mediaState: json['mediaState'] == null
        ? null
        : MediaState.fromJson(json['mediaState'] as Map<String, dynamic>),
    playerView: PlayerView.fromJson(json['playerView'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AudioPlayerStateToJson(
        _$_AudioPlayerState instance) =>
    <String, dynamic>{
      'queueState': instance.queueState,
      'mediaState': instance.mediaState,
      'playerView': instance.playerView,
    };
