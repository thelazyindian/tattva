import 'package:flutter/material.dart';

class AudioTitleBar extends StatelessWidget {
  final String heading;
  final String firstSubHeading;
  final String secondSubHeading;
  final Color textColor;

  const AudioTitleBar({
    Key? key,
    required this.heading,
    required this.firstSubHeading,
    required this.secondSubHeading,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
        Row(
          children: [
            Text(
              firstSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: textColor,
              ),
            ),
            Container(
              width: 4.0,
              height: 4.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: textColor),
            ),
            Text(
              secondSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: textColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
