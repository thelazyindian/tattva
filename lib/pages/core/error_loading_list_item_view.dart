import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/dimens.dart';

class ErrorLoadingListItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
          bloc: getIt<AudioPlayerBloc>(),
          builder: (context, state) {
            return Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).viewInsets.bottom -
                  state.map(
                    expanded: (_) => kToolbarHeight + bottomNavbarHeight,
                    collapsed: (_) =>
                        kToolbarHeight + bottomNavbarHeight + audioCollapsedBar,
                    none: (_) => kToolbarHeight + bottomNavbarHeight,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/error.png',
                    height: 80.0,
                    width: 80.0,
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    'SOME ERROR OCCURED!',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
