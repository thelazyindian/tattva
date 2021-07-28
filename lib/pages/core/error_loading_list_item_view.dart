import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/error_view.dart';
import 'package:tattva/utils/dimens.dart';

class ErrorLoadingListItemView extends StatelessWidget {
  final double? height;

  const ErrorLoadingListItemView({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
          bloc: getIt<AudioPlayerBloc>(),
          builder: (context, state) {
            return Container(
              alignment: Alignment.center,
              height: height ??
                  MediaQuery.of(context).size.height -
                      MediaQuery.of(context).viewInsets.bottom -
                      state.playerView.map(
                        expanded: (_) => kToolbarHeight + bottomNavbarHeight,
                        collapsed: (_) =>
                            kToolbarHeight +
                            bottomNavbarHeight +
                            audioCollapsedBar,
                        none: (_) => kToolbarHeight + bottomNavbarHeight,
                      ),
              child: ErrorView(),
            );
          },
        ),
      ],
    );
  }
}
