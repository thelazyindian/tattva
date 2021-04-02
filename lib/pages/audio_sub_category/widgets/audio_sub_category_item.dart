import 'package:flutter/material.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_like_button.dart';
import 'package:tattva/utils/styles.dart';

class AudioSubCategoryItem extends StatelessWidget {
  final TattvaAudio tattvaAudio;
  final bool liked;
  final VoidCallback? onTap;

  const AudioSubCategoryItem({
    Key? key,
    required this.tattvaAudio,
    this.onTap,
    required this.liked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Theme.of(context).primaryColor,
      elevation: 4.0,
      shadowColor: Color(0x40BFBABA),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 80.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 18.0,
          ),
          child: Row(
            children: [
              _thumbnail(),
              const SizedBox(width: 16.0),
              Expanded(child: _audioTitleSubtitle()),
              AudioLikeButton(
                liked: liked,
                onTap: () {
                  getIt<AudioBloc>().add(
                    liked
                        ? AudioEvent.dislikedAudio(id: tattvaAudio.id)
                        : AudioEvent.likedAudio(id: tattvaAudio.id),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _thumbnail() => ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          tattvaAudio.thumbnail.first.url,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade200),
        ),
      );

  Widget _audioTitleSubtitle() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tattvaAudio.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                '${tattvaAudio.durationInMins} min',
                style: audioSubCategorySubTitleTextStyle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 3.0,
                width: 3.0,
                decoration: BoxDecoration(
                    color: Color(0xFF908A8A), shape: BoxShape.circle),
              ),
              Text(
                tattvaAudio.language,
                style: audioSubCategorySubTitleTextStyle,
              ),
            ],
          )
        ],
      );
}
