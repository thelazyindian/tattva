import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';

class EmptyResultsView extends StatelessWidget {
  final String message;

  const EmptyResultsView({
    Key? key,
    this.message = 'NO RESULTS FOUND!',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
            bloc: getIt<AudioPlayerBloc>(),
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/empty_box.png',
                    height: 80.0,
                    width: 80.0,
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
