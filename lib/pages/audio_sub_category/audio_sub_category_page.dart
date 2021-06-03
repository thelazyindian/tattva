import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_sub_category/widgets/audio_sub_category_item.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';

class AudioSubCategoryPage extends StatelessWidget {
  final String title;
  final List<TattvaAudio> audios;
  final String? bannerImage;
  final bool enableAudioPreviewPadding;

  const AudioSubCategoryPage({
    Key? key,
    required this.title,
    required this.audios,
    this.bannerImage,
    this.enableAudioPreviewPadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.subhead,
        title: title,
        titleAlignment: TextAlign.start,
        // suffixIcon: 'icons/search.svg',
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0,
          ),
          shrinkWrap: true,
          children: [
            if (bannerImage != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: SizedBox(
                    height: 135.0,
                    child: Image.network(
                      bannerImage!,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) =>
                          Container(color: Colors.grey.shade200),
                    ),
                  ),
                ),
              ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (_, __) => const SizedBox(height: 15.0),
              itemCount: audios.length,
              itemBuilder: (context, idx) {
                return AudioSubCategoryItem(
                  tattvaAudio: audios[idx],
                  onTap: () {
                    if (context.router.current!.route.routeName ==
                        'LikedItemsAudioSubCategoryRoute') {
                      context.router.pop().then(
                            (_) => context.router.pop().then(
                                  (_) => context.router.pop(),
                                ),
                          );
                    }
                    getIt<AudioPlayerBloc>()
                        .add(AudioPlayerEvent.audioItemClicked(
                      categoryName: title,
                      audios: audios,
                      idx: idx,
                    ));
                  },
                );
              },
            ),
            if (enableAudioPreviewPadding) AudioPlayerPreviewPadding(),
          ],
        ),
      ),
    );
  }
}
