import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/injection.dart';

class AudioLikeButton extends StatelessWidget {
  final String audioId;

  const AudioLikeButton({
    Key? key,
    required this.audioId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioBloc, AudioState>(
      bloc: getIt<AudioBloc>(),
      builder: (context, audioState) {
        return BlocBuilder<LikedItemsBloc, LikedItemsState>(
          bloc: getIt<LikedItemsBloc>(),
          builder: (context, likedItemsState) {
            final likedAudios = likedItemsState.likedItemsOption.fold(
                () => [],
                (sOrF) => sOrF.fold(
                      (l) => [],
                      (r) => r.likedAudios,
                    ));
            final likedAudioIds =
                List<String>.from(likedAudios.map((e) => e.id).toList());

            final liked = audioState.likedAudios.contains(audioId) ||
                likedAudioIds.contains(audioId);

            return IconButton(
              onPressed: () {
                getIt<AudioBloc>().add(
                  liked
                      ? AudioEvent.dislikedAudio(id: audioId)
                      : AudioEvent.likedAudio(id: audioId),
                );
              },
              splashRadius: 24.0,
              icon: SvgPicture.asset(
                liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
                height: 20.0,
                width: 20.0,
              ),
            );
          },
        );
      },
    );
  }
}
