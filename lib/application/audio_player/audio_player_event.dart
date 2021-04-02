part of 'audio_player_bloc.dart';

@freezed
class AudioPlayerEvent with _$AudioPlayerEvent {
  const factory AudioPlayerEvent.started() = _Started;
  const factory AudioPlayerEvent.none() = _NoneE;
  const factory AudioPlayerEvent.collapse() = _Collapse;
  const factory AudioPlayerEvent.expand() = _Expand;
}
