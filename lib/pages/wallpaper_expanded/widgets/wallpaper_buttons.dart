import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpaper_like_button.dart';

class WallpaperButtons extends StatelessWidget {
  final Wallpaper wallpaper;
  final size = 24.0;

  const WallpaperButtons({Key? key, required this.wallpaper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            getIt<IWallpaperFacade>().downloadImageFile(wallpaper.image.first);
          },
          icon: SvgPicture.asset(
            'icons/download.svg',
            height: size,
            width: size,
          ),
        ),
        const SizedBox(width: 24.0),
        WallpaperLikeButton(
          wallpaperId: wallpaper.id,
          btnSize: 24.0,
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
