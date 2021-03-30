import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';

class PageContents extends StatelessWidget {
  final List<AudioSubCategory> audioSubCategories;

  const PageContents({
    Key? key,
    required this.audioSubCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...audioSubCategories
            .map((audioSubCategory) => generateItems(audioSubCategory))
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

  Widget generateItems(audioSubCategory) {
    return Column(
      children: [
        AudioSubcategorySection(audioSubCategory: audioSubCategory),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
