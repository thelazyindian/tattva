import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'audio_player_event.dart';
part 'audio_player_state.dart';
part 'audio_player_bloc.freezed.dart';

@lazySingleton
class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  AudioPlayerBloc() : super(AudioPlayerState.none());

  @override
  Stream<AudioPlayerState> mapEventToState(
    AudioPlayerEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {
        yield AudioPlayerState.none();
      },
      collapse: (_) async* {
        yield AudioPlayerState.collapsed();
      },
      expand: (_) async* {
        yield AudioPlayerState.expanded();
      },
    );
  }
}
