import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WallpaperButtons extends StatelessWidget {
  final size = 24.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'icons/download.svg',
          height: size,
          width: size,
        ),
        const SizedBox(width: 24.0),
        SvgPicture.asset(
          'icons/heartOutline.svg',
          height: size,
          width: size,
        ),
        const SizedBox(width: 24.0),
        SvgPicture.asset(
          'icons/share.svg',
          height: size,
          width: size,
        )
      ],
    );
  }
}
