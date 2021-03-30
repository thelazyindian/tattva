part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState.expanded() = _Expanded;
  const factory AudioPlayerState.collapsed() = _Collapsed;
  const factory AudioPlayerState.none() = _None;
}
