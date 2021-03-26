import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_categories_section.dart';
import 'package:tattva/pages/audio/widgets/page_contents.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';

class AudioPage extends StatefulWidget {
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  List<List<String>> superList = [
    ["AIR", "WATER", "FIRE"],
    ["EMOTIONAL HAPPINESS", "POSITIVE MINDSET", "CONFIDENCE & STRENGTH"],
    ["PRAYER 1", "PRAYER 2", "PRAYER 3"]
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    getIt<AudioBloc>().add(AudioEvent.started());

    return Scaffold(
      appBar: CustomAppBar(text: "Audio"),
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
    );
  }
}
