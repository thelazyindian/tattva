import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/widgets/play_pause_button.dart';
import 'package:tattva/pages/core/audio_like_button.dart';

class MediaControlsBar extends StatelessWidget {
  final MediaItem mediaItem;

  const MediaControlsBar({Key? key, required this.mediaItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioBloc, AudioState>(
      bloc: getIt<AudioBloc>(),
      builder: (context, state) {
        final uid = mediaItem.extras!['uid'];

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              splashRadius: 24.0,
              icon: SvgPicture.asset(
                'icons/share.svg',
                height: 20.0,
                width: 20.0,
              ),
            ),
            IconButton(
              onPressed:
                  AudioService.queue!.first == AudioService.currentMediaItem
                      ? null
                      : AudioService.skipToPrevious,
              splashRadius: 24.0,
              iconSize: 32.0,
              icon: Icon(Icons.skip_previous_rounded),
            ),
            PlayPauseButton(),
            IconButton(
              onPressed:
                  AudioService.queue!.last == AudioService.currentMediaItem
                      ? null
                      : AudioService.skipToNext,
              splashRadius: 24.0,
              iconSize: 32.0,
              icon: Icon(Icons.skip_next_rounded),
            ),
            AudioLikeButton(audioId: uid),
          ],
        );
      },
    );
  }
}
