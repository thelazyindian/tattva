import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_categories_section.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tattva/router/router.gr.dart';

class AudioPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => getIt<AudioBloc>().add(AudioEvent.started()),
      child: BlocBuilder<AudioBloc, AudioState>(
        bloc: getIt<AudioBloc>()..add(AudioEvent.started()),
        builder: (context, state) {
          return state.audioCategoriesOption.fold(
            () => const Center(child: CircularProgressIndicator()),
            (audioCategoriesSuccessOrFailure) =>
                audioCategoriesSuccessOrFailure.fold(
              (l) => ErrorLoadingListItemView(),
              (audioCategories) => ListView(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                children: [
                  AudioCategoriesSection(audioCategories: audioCategories),
                  const SizedBox(height: 48.0),
                  state.selectedAudioCategory.fold(
                    () => const Center(child: Text('NO SUBS')),
                    (category) => state.loadingSubCategory
                        ? const Center(child: CircularProgressIndicator())
                        : (category.audioSubCategories == null)
                            ? ErrorLoadingListItemView()
                            : _subCategories(
                                context, category.audioSubCategories!),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _subCategories(
    BuildContext context,
    List<AudioSubCategory> audioSubCategories,
  ) =>
      Column(
        children: [
          ...audioSubCategories
              .map((audioSubCategory) => Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: AudioSubcategorySection(
                      categoryName: audioSubCategory.name,
                      audios: audioSubCategory.audios,
                      bannerImage: audioSubCategory.banner.first.url,
                      onTapNext: () =>
                          context.router.navigate(AudioSubCategoryRoute(
                        title: audioSubCategory.name,
                        audios: audioSubCategory.audios,
                        bannerImage: audioSubCategory.banner.first.url,
                      )),
                    ),
                  ))
              .toList(),
          AudioPlayerPreviewPadding(),
        ],
      );
}
