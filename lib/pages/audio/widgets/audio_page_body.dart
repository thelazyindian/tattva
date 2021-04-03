import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_categories_section.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';

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
              (l) => ListView(
                children: [const Center(child: Text('ERROR'))],
              ),
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
                            ? const Center(child: Text('ERROR'))
                            : _subCategories(category.audioSubCategories!),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _generateItems(audioSubCategory) => Column(
        children: [
          AudioSubcategorySection(audioSubCategory: audioSubCategory),
          const SizedBox(height: 20.0),
        ],
      );

  Widget _subCategories(List<AudioSubCategory> audioSubCategories) => Column(
        children: [
          ...audioSubCategories
              .map((audioSubCategory) => _generateItems(audioSubCategory))
              .toList(),
          BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
            bloc: getIt<AudioPlayerBloc>(),
            builder: (context, state) {
              return SizedBox(
                height: state.map(
                  expanded: (_) => 73.0,
                  collapsed: (_) => 73.0 + 64.0,
                  none: (_) => 73.0,
                ),
              );
            },
          ),
        ],
      );
}