import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';

class AudioPlayerPreviewPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      bloc: getIt<AudioPlayerBloc>(),
      builder: (context, state) {
        return SizedBox(
          height: state.map(
            expanded: (_) => 73.0,
            collapsed: (_) => 73.0 + 64.0,
            none: (_) => 73.0,
          ),
        );
      },
    );
  }
}
