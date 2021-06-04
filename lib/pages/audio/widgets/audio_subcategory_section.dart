import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_item.dart';
import 'package:tattva/pages/core/category_title_bar.dart';

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
    return audios.isNotEmpty
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CategoryTitleBar(
                title:
                    uppercaseTitle ? categoryName.toUpperCase() : categoryName,
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
                          context.router
                              .pop()
                              .then((_) => context.router.pop());
                        }
                        getIt<AudioPlayerBloc>()
                            .add(AudioPlayerEvent.audioItemClicked(
                          categoryName: categoryName,
                          audios: audios,
                          idx: idx,
                        ));
                      },
                    );
                  },
                  separatorBuilder: (context, idx) =>
                      const SizedBox(width: 10.0),
                  itemCount: audios.length,
                ),
              ),
            ],
          )
        : Container();
  }
}
