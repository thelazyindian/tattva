import 'package:flutter/material.dart';

class AudioItem extends StatelessWidget {
  final String imageUri;
  final String heading;
  final String firstSubHeading;
  final String secondSubHeading;

  const AudioItem({
    Key? key,
    required this.imageUri,
    required this.heading,
    required this.firstSubHeading,
    required this.secondSubHeading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {},
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
                  child: textualElements(),
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

  Widget textualElements() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        SizedBox(height: .0),
        Row(
          children: [
            Text(
              firstSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
            Container(
              width: 4.0,
              height: 4.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
            Text(
              secondSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
