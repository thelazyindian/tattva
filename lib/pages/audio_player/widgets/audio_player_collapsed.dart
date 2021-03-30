import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/audio_player/media_state.dart';
import 'package:tattva/domain/audio_player/queue_state.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/widgets/seek_bar.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';

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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mediaItem.title,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w900,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 24.0,
                  icon: SvgPicture.asset(
                    'icons/heartOutline.svg',
                    height: 15.0,
                    width: 15.0,
                  ),
                ),
                StreamBuilder<PlaybackState>(
                  stream: AudioService.playbackStateStream,
                  builder: (context, snapshot) {
                    final playerState = snapshot.data;
                    final processingState = playerState?.processingState;
                    final playing = playerState?.playing;
                    final loading =
                        processingState == AudioProcessingState.connecting ||
                            processingState == AudioProcessingState.buffering;

                    if (playing != true) {
                      return IconButton(
                        onPressed: AudioService.play,
                        splashRadius: 16.0,
                        icon: SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: SvgPicture.asset('icons/play.svg'),
                        ),
                      );
                    } else {
                      return IconButton(
                        onPressed: loading ? null : AudioService.pause,
                        splashRadius: 16.0,
                        icon: SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: SvgPicture.asset('icons/pause.svg'),
                        ),
                      );
                    }
                  },
                ),
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
}
