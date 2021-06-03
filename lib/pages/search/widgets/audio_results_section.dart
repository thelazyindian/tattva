import 'package:flutter/material.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_title_bar.dart';

class AudioResultsSection extends StatelessWidget {
  final List<TattvaAudio> audios;

  const AudioResultsSection({
    Key? key,
    required this.audios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: audios.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
      itemBuilder: (_, idx) {
        final audio = audios[idx];

        return InkWell(
          onTap: () =>
              getIt<AudioPlayerBloc>().add(AudioPlayerEvent.audioItemClicked(
            categoryName: 'Search Results',
            audios: audios,
            idx: idx,
          )),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 4.0,
            ),
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                SizedBox(
                  height: 48.0,
                  width: 48.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      audio.thumbnail.first.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: AudioTitleBar(
                    heading: audio.name,
                    firstSubHeading: '${audio.durationInMins} min',
                    secondSubHeading: audio.language,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
