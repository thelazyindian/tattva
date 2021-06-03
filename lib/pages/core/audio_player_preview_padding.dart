import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';

class AudioPlayerPreviewPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      bloc: getIt<AudioPlayerBloc>(),
      builder: (context, state) {
        return SizedBox(
          height: state.playerView.map(
            expanded: (_) => bottomNavbarHeight,
            collapsed: (_) => bottomNavbarHeight + audioCollapsedBar,
            none: (_) => bottomNavbarHeight,
          ),
        );
      },
    );
  }
}
