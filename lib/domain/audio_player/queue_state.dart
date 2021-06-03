import 'package:audio_service/audio_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_state.freezed.dart';
part 'queue_state.g.dart';

@freezed
class QueueState with _$QueueState {
  const factory QueueState(List<MediaItem>? queue, MediaItem? mediaItem) =
      _QueueState;

  factory QueueState.fromJson(Map<String, dynamic> json) =>
      _$QueueStateFromJson(json);
}
