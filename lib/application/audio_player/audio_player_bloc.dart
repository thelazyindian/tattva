import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'audio_player_event.dart';
part 'audio_player_state.dart';
part 'audio_player_bloc.freezed.dart';

@lazySingleton
class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc() : super(AudioPlayerState.none());

  late StreamSubscription<MediaItem?> _streamSubscription;

  @override
  Stream<AudioPlayerState> mapEventToState(
    AudioPlayerEvent event,
  ) async* {
    yield* event.map(started: (_) async* {
      _streamSubscription = AudioService.currentMediaItemStream.listen((event) {
        if (event != null) {
          state.maybeMap(
              none: (_) => add(AudioPlayerEvent.collapse()), orElse: () {});
        } else {
          add(AudioPlayerEvent.none());
        }
      });
    }, collapse: (_) async* {
      yield AudioPlayerState.collapsed();
    }, expand: (_) async* {
      yield AudioPlayerState.expanded();
    }, none: (_) async* {
      yield AudioPlayerState.none();
    });
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
