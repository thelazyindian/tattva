import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/widgets/media_controls_bar.dart';
import 'package:tattva/pages/audio_player/widgets/seek_bar.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/utils/dimens.dart';

class AudioPlayerExpanded extends StatelessWidget {
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
        child: BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
          bloc: getIt<AudioPlayerBloc>(),
          builder: (context, state) {
            if ((state.queueState == null) ||
                (state.queueState?.mediaItem == null)) {
              return const Center(
                  child: CircularProgressIndicator(
                      strokeWidth: progressIndicatorStrokeWidth));
            }
            final mediaItem = state.queueState!.mediaItem!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'icons/headset.svg',
                        height: 35.0,
                        width: 35.0,
                      ),
                      const SizedBox(width: 22.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mediaItem.title,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
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
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        (mediaItem.extras!['mediaArt'] as String),
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                            Container(color: Colors.grey.shade200),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 16.0, 30.0, .0),
                      child: MediaControlsBar(mediaItem: mediaItem),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21.0, 0.0, 21.0, 16.0),
                      child: SeekBar(
                        duration: state.mediaState?.mediaItem?.duration ??
                            Duration.zero,
                        position: state.mediaState?.position ?? Duration.zero,
                        onChangeEnd: (newPosition) =>
                            AudioService.seekTo(newPosition),
                      ),
                    ),
                  ],
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
