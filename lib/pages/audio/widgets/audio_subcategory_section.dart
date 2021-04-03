import 'package:audio_service/audio_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/infrastructure/audio_player/audio_player_task.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_item.dart';
import 'package:tattva/router/router.gr.dart';

void _entrypoint() => AudioServiceBackground.run(() => AudioPlayerTask());

class AudioSubcategorySection extends StatelessWidget {
  final AudioSubCategory audioSubCategory;

  const AudioSubcategorySection({
    Key? key,
    required this.audioSubCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Text(
                audioSubCategory.name.toUpperCase(),
                style: TextStyle(
                  fontSize: 17.0,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  context.router.navigate(AudioSubCategoryRoute(
                      audioSubCategory: audioSubCategory));
                },
                customBorder: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'icons/forward.svg',
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          height: 120.0,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, idx) {
              final audio = audioSubCategory.audios[idx];
              return AudioItem(
                heading: audio.name,
                imageUri: audio.thumbnail.first.url,
                firstSubHeading: '${audio.durationInMins} min',
                secondSubHeading: audio.language,
                onTap: () => onAudioItemClicked(
                  audioSubCategory: audioSubCategory,
                  idx: idx,
                ),
              );
            },
            separatorBuilder: (context, idx) => const SizedBox(width: 10.0),
            itemCount: audioSubCategory.audios.length,
          ),
        ),
      ],
    );
  }
}

onAudioItemClicked({
  required AudioSubCategory audioSubCategory,
  required int idx,
}) {
  final audio = audioSubCategory.audios[idx];

  final mediaItems = audioSubCategory.audios
      .map((e) => MediaItem(
            id: e.audioFile.first.url,
            artUri: Uri.parse(e.thumbnail.first.url),
            album: audioSubCategory.name,
            title: e.name,
            extras: {'uid': e.id},
          ))
      .toList();

  if (AudioService.running) {
    debugPrint('updateQueue');
    AudioService.customAction(
      audio.audioFile.first.url,
      mediaItems.map((e) => e.toJson()).toList(),
    );
  } else {
    AudioService.start(
      backgroundTaskEntrypoint: _entrypoint,
      params: {
        'mediaItems': mediaItems.map((e) => e.toJson()).toList(),
        'index': idx,
      },
    );
  }

  getIt<AudioPlayerBloc>().add(AudioPlayerEvent.expand());
}
