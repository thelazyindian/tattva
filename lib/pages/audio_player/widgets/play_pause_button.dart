import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';

enum PlayPauseButtonType { expanded, collapsed }

class PlayPauseButton extends StatelessWidget {
  final PlayPauseButtonType playPauseButtonType;

  const PlayPauseButton({
    Key? key,
    this.playPauseButtonType = PlayPauseButtonType.expanded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      bloc: getIt<AudioPlayerBloc>(),
      builder: (context, state) {
        final processingState = state.playbackState?.processingState;
        final playing = state.playbackState?.playing;
        final loading = processingState == AudioProcessingState.connecting ||
            processingState == AudioProcessingState.buffering;

        if (playing != true) {
          return IconButton(
            onPressed: AudioService.play,
            splashRadius: 36.0,
            iconSize: playPauseButtonType == PlayPauseButtonType.expanded
                ? 48.0
                : 36.0,
            icon: Icon(
              playPauseButtonType == PlayPauseButtonType.expanded
                  ? Icons.play_circle_fill
                  : Icons.play_arrow_rounded,
            ),
            color: Theme.of(context).accentColor,
          );
        } else {
          return IconButton(
            onPressed: loading ? null : AudioService.pause,
            splashRadius: 36.0,
            iconSize: playPauseButtonType == PlayPauseButtonType.expanded
                ? 48.0
                : 30.0,
            icon: Icon(
              playPauseButtonType == PlayPauseButtonType.expanded
                  ? Icons.pause_circle_filled
                  : Icons.pause_rounded,
            ),
            color: Theme.of(context).accentColor,
          );
        }
      },
    );
  }
}
