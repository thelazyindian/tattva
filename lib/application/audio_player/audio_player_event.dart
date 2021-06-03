part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerEvent with _$AudioPlayerEvent {
  const factory AudioPlayerEvent.started() = _Started;
  const factory AudioPlayerEvent.none() = _None;
  const factory AudioPlayerEvent.collapse() = _Collapse;
  const factory AudioPlayerEvent.expand() = _Expand;
  const factory AudioPlayerEvent.play() = _Play;
  const factory AudioPlayerEvent.updateQueueState(QueueState? queueState) =
      _UpdateQueueState;
  const factory AudioPlayerEvent.updateMediaState(MediaState? mediaState) =
      _UpdateMediaState;
  const factory AudioPlayerEvent.updatePlaybackState(
      PlaybackState? playbackState) = _UpdatePlaybackState;
  const factory AudioPlayerEvent.audioItemClicked({
    required String categoryName,
    required List<TattvaAudio> audios,
    required int idx,
  }) = _AudioItemClicked;
}
