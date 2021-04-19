import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';
import 'package:tattva/pages/audio_sub_category/widgets/audio_sub_category_item.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';

class AudioSubCategoryPage extends StatelessWidget {
  final AudioSubCategory audioSubCategory;

  const AudioSubCategoryPage({Key? key, required this.audioSubCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.subhead,
        title: audioSubCategory.name,
        titleAlignment: TextAlign.start,
        suffixIcon: 'icons/search.svg',
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: 135.0,
                child: Image.network(
                  audioSubCategory.banner.first.url,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(color: Colors.grey.shade200),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            BlocBuilder<AudioBloc, AudioState>(
              bloc: getIt<AudioBloc>(),
              builder: (context, state) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => const SizedBox(height: 15.0),
                  itemCount: audioSubCategory.audios.length,
                  itemBuilder: (context, idx) {
                    return AudioSubCategoryItem(
                      tattvaAudio: audioSubCategory.audios[idx],
                      liked: state.likedAudios
                          .contains(audioSubCategory.audios[idx].id),
                      onTap: () => onAudioItemClicked(
                        audioSubCategory: audioSubCategory,
                        idx: idx,
                      ),
                    );
                  },
                );
              },
            ),
            AudioPlayerPreviewPadding(),
          ],
        ),
      ),
    );
  }
}
