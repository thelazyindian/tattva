import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/domain/core/tattva_image.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/injection.dart';

class WallpaperButtons extends StatelessWidget {
  final TattvaImage tattvaImage;

  final size = 24.0;

  const WallpaperButtons({Key? key, required this.tattvaImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            getIt<IWallpaperFacade>().downloadImageFile(tattvaImage);
          },
          icon: SvgPicture.asset(
            'icons/download.svg',
            height: size,
            width: size,
          ),
        ),
        const SizedBox(width: 24.0),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'icons/heartOutline.svg',
            height: size,
            width: size,
          ),
        ),
        const SizedBox(width: 24.0),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'icons/share.svg',
            height: size,
            width: size,
          ),
        )
      ],
    );
  }
}
