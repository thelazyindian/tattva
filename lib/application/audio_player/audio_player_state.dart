part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState({
    QueueState? queueState,
    MediaState? mediaState,
    @JsonKey(ignore: true) PlaybackState? playbackState,
    required PlayerView playerView,
  }) = _AudioPlayerState;

  factory AudioPlayerState.initial() => _AudioPlayerState(
        playerView: PlayerView.none(),
      );

  factory AudioPlayerState.fromJson(Map<String, dynamic> json) =>
      _$AudioPlayerStateFromJson(json);
}
