import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_categories_section.dart';
import 'package:tattva/pages/audio/widgets/page_contents.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/audio_player/widgets/audio_player_collapsed.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';

class AudioPage extends StatefulWidget {
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    getIt<AudioBloc>().add(AudioEvent.started());

    return Stack(
      children: [
        Scaffold(
          appBar: CustomAppBar(
            text: "Audio",
            suffixIcon: 'icons/person.svg',
            customAppBarType: CustomAppBarType.head,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          body: BlocBuilder<AudioBloc, AudioState>(
            bloc: getIt<AudioBloc>(),
            builder: (context, state) {
              return state.audioCategoriesOption.fold(
                () => const Center(child: CircularProgressIndicator()),
                (audioCategoriesSuccessOrFailure) =>
                    audioCategoriesSuccessOrFailure.fold(
                  (l) => const Center(child: Text('ERROR')),
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
                                : PageContents(
                                    audioSubCategories:
                                        category.audioSubCategories!),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
          bloc: getIt<AudioPlayerBloc>()..add(AudioPlayerEvent.started()),
          builder: (context, state) {
            return AnimatedPositioned(
              bottom: 0.0,
              duration: Duration(milliseconds: 400),
              width: MediaQuery.of(context).size.width,
              height: state.map(
                expanded: (_) => MediaQuery.of(context).size.height,
                collapsed: (_) => 64.0,
                none: (_) => .0,
              ),
              child: state.maybeMap(
                none: (_) => Container(),
                orElse: () => Material(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      borderRadius: state.maybeMap(
                          collapsed: (_) => BorderRadius.circular(28.0),
                          orElse: () => BorderRadius.zero),
                    ),
                    child: state.maybeMap(
                        collapsed: (_) => AudioPlayerCollapsed(),
                        orElse: () => AudioPlayerPage()),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
