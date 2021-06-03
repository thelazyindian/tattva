import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/widgets/play_pause_button.dart';
import 'package:tattva/pages/audio_player/widgets/seek_bar.dart';
import 'package:tattva/pages/core/audio_like_button.dart';
import 'package:tattva/utils/dimens.dart';

class AudioPlayerCollapsed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      bloc: getIt<AudioPlayerBloc>(),
      builder: (context, state) {
        if ((state.queueState == null) ||
            (state.queueState?.mediaItem == null)) {
          return Container();
        }

        final mediaItem = state.queueState!.mediaItem;
        return Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: onCollapsedItemClicked,
                    child: Row(
                      children: [
                        Image.network(
                          mediaItem!.artUri.toString(),
                          fit: BoxFit.cover,
                          height: audioCollapsedBar,
                          width: audioCollapsedBar,
                          errorBuilder: (_, __, ___) =>
                              Container(color: Colors.grey.shade200),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: _audioTitleSubtitle(mediaItem),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AudioLikeButton(
                  audioId: mediaItem.extras!['uid'],
                ),
                SizedBox(
                  width: 60.0,
                  child: PlayPauseButton(
                    playPauseButtonType: PlayPauseButtonType.collapsed,
                  ),
                ),
                const SizedBox(width: 8.0),
              ],
            ),
            Positioned(
              top: 0.0,
              width: MediaQuery.of(context).size.width,
              child: SeekBar(
                duration:
                    state.mediaState?.mediaItem?.duration ?? Duration.zero,
                position: state.mediaState?.position ?? Duration.zero,
                collapsed: true,
                onChangeEnd: (newPosition) => AudioService.seekTo(newPosition),
              ),
            )
          ],
        );
      },
    );
  }

  void onCollapsedItemClicked() =>
      getIt<AudioPlayerBloc>().add(AudioPlayerEvent.expand());

  Widget _audioTitleSubtitle(MediaItem mediaItem) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mediaItem.title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            mediaItem.album,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF908A8A),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
}
