import 'package:flutter/material.dart';

class AudioTitleBar extends StatelessWidget {
  final String heading;
  final String firstSubHeading;
  final String secondSubHeading;
  final bool enableShadow;
  final Color textColor;

  const AudioTitleBar({
    Key? key,
    required this.heading,
    required this.firstSubHeading,
    required this.secondSubHeading,
    this.textColor = Colors.white,
    this.enableShadow = false,
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
            // shadows: (enableShadow)
            //     ? [
            //         Shadow(
            //           // bottomLeft
            //           offset: Offset(-0.65, -0.65),
            //           blurRadius: 1.0,
            //           color: Colors.black45,
            //         ),
            //         Shadow(
            //           // bottomRight
            //           offset: Offset(0.65, -0.65),
            //           blurRadius: 1.0,
            //           color: Colors.black45,
            //         ),
            //         Shadow(
            //           // topRight
            //           offset: Offset(0.65, 0.65),
            //           blurRadius: 1.0,
            //           color: Colors.black45,
            //         ),
            //         Shadow(
            //           // topLeft
            //           blurRadius: 1.0,
            //           offset: Offset(-0.65, 0.65),
            //           color: Colors.black45,
            //         ),
            //       ]
            //     : null,
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
