import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/audio_player/media_state.dart';
import 'package:tattva/domain/audio_player/queue_state.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/audio_player/widgets/play_pause_button.dart';
import 'package:tattva/pages/audio_player/widgets/seek_bar.dart';
import 'package:tattva/pages/core/audio_like_button.dart';

class AudioPlayerCollapsed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QueueState?>(
      stream: queueStateStream,
      builder: (context, snapshot) {
        final queueState = snapshot.data;
        if (queueState == null || queueState.mediaItem == null) {
          return Container();
        }

        final mediaItem = queueState.mediaItem;

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
                          height: 64.0,
                          width: 64.0,
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
                BlocBuilder<AudioBloc, AudioState>(
                  bloc: getIt<AudioBloc>(),
                  builder: (context, state) {
                    final uid = mediaItem.extras!['uid'];
                    final bool liked = state.likedAudios.contains(uid);

                    return AudioLikeButton(
                      liked: liked,
                      onTap: () {
                        getIt<AudioBloc>().add(
                          liked
                              ? AudioEvent.dislikedAudio(id: uid)
                              : AudioEvent.likedAudio(id: uid),
                        );
                      },
                    );
                  },
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
              child: StreamBuilder<MediaState>(
                stream: mediaStateStream,
                builder: (context, snapshot) {
                  final mediaState = snapshot.data;
                  return SeekBar(
                    duration: mediaState?.mediaItem?.duration ?? Duration.zero,
                    position: mediaState?.position ?? Duration.zero,
                    collapsed: true,
                    onChangeEnd: (newPosition) {
                      AudioService.seekTo(newPosition);
                    },
                  );
                },
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
