import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';

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
                  state.map(
                    expanded: (_) => 80.0,
                    collapsed: (_) => 80.0 + 64.0,
                    none: (_) => 80.0,
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
