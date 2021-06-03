import 'package:audio_service/audio_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_state.freezed.dart';
part 'media_state.g.dart';

@freezed
class MediaState with _$MediaState {
  const factory MediaState(MediaItem? mediaItem, Duration position) =
      _MediaState;

  factory MediaState.fromJson(Map<String, dynamic> json) =>
      _$MediaStateFromJson(json);
}
