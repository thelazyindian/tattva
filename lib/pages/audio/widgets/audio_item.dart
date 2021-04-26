import 'package:flutter/material.dart';
import 'package:tattva/pages/audio/widgets/audio_title_bar.dart';

class AudioItem extends StatelessWidget {
  final String imageUri;
  final String heading;
  final String firstSubHeading;
  final String secondSubHeading;
  final VoidCallback? onTap;

  const AudioItem({
    Key? key,
    required this.imageUri,
    required this.heading,
    required this.firstSubHeading,
    required this.secondSubHeading,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: onTap,
          child: SizedBox(
            height: 120.0,
            width: 120.0,
            child: Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    imageUri,
                  ),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: AudioTitleBar(
                    heading: heading,
                    firstSubHeading: firstSubHeading,
                    secondSubHeading: secondSubHeading,
                  ),
                  bottom: 13.0,
                  left: 10.0,
                  right: 10.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
