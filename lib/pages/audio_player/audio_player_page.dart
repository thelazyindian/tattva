import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/widgets/audio_player_collapsed.dart';
import 'package:tattva/pages/audio_player/widgets/audio_player_expanded.dart';

class AudioPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      bloc: getIt<AudioPlayerBloc>(),
      builder: (context, state) {
        return AnimatedPositioned(
          bottom: .0,
          duration: Duration(milliseconds: 200),
          width: MediaQuery.of(context).size.width,
          height: state.playerView.map(
            expanded: (_) => MediaQuery.of(context).size.height,
            collapsed: (_) => 73.0 + 64.0,
            none: (_) => .0,
          ),
          child: state.playerView.maybeMap(
            none: (_) => Container(),
            orElse: () => Material(
              color: Theme.of(context).primaryColor,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  borderRadius: state.playerView.maybeMap(
                      collapsed: (_) => BorderRadius.circular(28.0),
                      orElse: () => BorderRadius.zero),
                ),
                child: state.playerView.maybeMap(
                  collapsed: (_) => Column(
                    children: [
                      AudioPlayerCollapsed(),
                      const SizedBox(height: 73.0),
                    ],
                  ),
                  orElse: () => AudioPlayerExpanded(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
