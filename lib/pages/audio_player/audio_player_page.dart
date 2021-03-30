import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/audio_player/media_state.dart';
import 'package:tattva/domain/audio_player/queue_state.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/widgets/seek_bar.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';

class AudioPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.none,
        onPrefixPressed: () {
          getIt<AudioPlayerBloc>().add(AudioPlayerEvent.collapse());
        },
      ),
      body: WillPopScope(
        onWillPop: () async {
          getIt<AudioPlayerBloc>().add(AudioPlayerEvent.collapse());
          return false;
        },
        child: StreamBuilder<QueueState?>(
          stream: queueStateStream,
          builder: (context, snapshot) {
            final queueState = snapshot.data;
            if (queueState == null || queueState.mediaItem == null) {
              return const Center(child: CircularProgressIndicator());
            }

            final mediaItem = queueState.mediaItem;

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'icons/headset.svg',
                          height: 35.0,
                          width: 35.0,
                        ),
                        const SizedBox(width: 22.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mediaItem!.title,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              mediaItem.album,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xFF908A8A),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        mediaItem.artUri.toString(),
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            Container(color: Colors.grey.shade200),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, .0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              splashRadius: 24.0,
                              icon: SvgPicture.asset(
                                'icons/share.svg',
                                height: 16.0,
                                width: 16.0,
                              ),
                            ),
                            StreamBuilder<PlaybackState>(
                              stream: AudioService.playbackStateStream,
                              builder: (context, snapshot) {
                                final playerState = snapshot.data;
                                final processingState =
                                    playerState?.processingState;
                                final playing = playerState?.playing;
                                final loading = processingState ==
                                        AudioProcessingState.connecting ||
                                    processingState ==
                                        AudioProcessingState.buffering;

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
                                    onPressed:
                                        loading ? null : AudioService.pause,
                                    splashRadius: 16.0,
                                    icon: SizedBox(
                                      height: 45.0,
                                      width: 45.0,
                                      child:
                                          SvgPicture.asset('icons/pause.svg'),
                                    ),
                                  );
                                }
                              },
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
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                        child: StreamBuilder<MediaState>(
                          stream: mediaStateStream,
                          builder: (context, snapshot) {
                            final mediaState = snapshot.data;
                            return SeekBar(
                              duration: mediaState?.mediaItem?.duration ??
                                  Duration.zero,
                              position: mediaState?.position ?? Duration.zero,
                              onChangeEnd: (newPosition) {
                                AudioService.seekTo(newPosition);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 73.0),
              ],
            );
          },
        ),
      ),
    );
  }
}

Stream<QueueState> get queueStateStream =>
    Rx.combineLatest2<List<MediaItem>?, MediaItem?, QueueState>(
        AudioService.queueStream,
        AudioService.currentMediaItemStream,
        (queue, mediaItem) => QueueState(queue, mediaItem));

Stream<MediaState> get mediaStateStream =>
    Rx.combineLatest2<MediaItem?, Duration, MediaState>(
        AudioService.currentMediaItemStream,
        AudioService.positionStream,
        (mediaItem, position) => MediaState(mediaItem, position));
