import 'package:audio_service/audio_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/infrastructure/audio_player/audio_player_task.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_item.dart';
import 'package:tattva/pages/core/category_title_bar.dart';

void _entrypoint() => AudioServiceBackground.run(() => AudioPlayerTask());

class AudioSubcategorySection extends StatelessWidget {
  final String categoryName;
  final String? bannerImage;
  final bool uppercaseTitle;
  final List<TattvaAudio> audios;
  final VoidCallback? onTapNext;

  const AudioSubcategorySection({
    Key? key,
    required this.categoryName,
    required this.audios,
    this.uppercaseTitle = true,
    this.bannerImage,
    this.onTapNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CategoryTitleBar(
          title: uppercaseTitle ? categoryName.toUpperCase() : categoryName,
          onTapNext: onTapNext,
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          height: 120.0,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, idx) {
              final audio = audios[idx];
              return AudioItem(
                heading: audio.name,
                imageUri: audio.thumbnail.first.url,
                firstSubHeading: '${audio.durationInMins} min',
                secondSubHeading: audio.language,
                onTap: () {
                  if (context.router.current!.route.routeName ==
                      'LikedItemsRoute') {
                    context.router.pop().then((_) => context.router.pop());
                  }
                  onAudioItemClicked(
                    categoryName: categoryName,
                    audios: audios,
                    idx: idx,
                  );
                },
              );
            },
            separatorBuilder: (context, idx) => const SizedBox(width: 10.0),
            itemCount: audios.length,
          ),
        ),
      ],
    );
  }
}

onAudioItemClicked({
  required String categoryName,
  required List<TattvaAudio> audios,
  required int idx,
}) {
  final audio = audios[idx];

  final mediaItems = audios
      .map((e) => MediaItem(
            id: e.audioFile.first.url,
            artUri: Uri.parse(e.thumbnail.first.url),
            album: categoryName,
            title: e.name,
            extras: {
              'uid': e.id,
              'link': e.link,
            },
          ))
      .toList();
  if (AudioService.connected) {
    if (AudioService.running) {
      debugPrint('updateQueue');
      AudioService.customAction(
        audio.audioFile.first.url,
        mediaItems.map((e) => e.toJson()).toList(),
      );
    } else {
      AudioService.start(
        backgroundTaskEntrypoint: _entrypoint,
        androidStopForegroundOnPause: true,
        params: {
          'mediaItems': mediaItems.map((e) => e.toJson()).toList(),
          'index': idx,
        },
      );
    }

    getIt<AudioPlayerBloc>().add(AudioPlayerEvent.expand());
  }
}
