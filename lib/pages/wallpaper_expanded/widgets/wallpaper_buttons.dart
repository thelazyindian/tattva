import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/injection.dart';

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
        BlocBuilder<WallpaperBloc, WallpaperState>(
          bloc: getIt<WallpaperBloc>(),
          builder: (context, state) {
            final liked = state.likedWallpapers.contains(wallpaper.id);
            return IconButton(
              onPressed: () {
                getIt<WallpaperBloc>().add(
                  liked
                      ? WallpaperEvent.dislikedWallpaper(id: wallpaper.id)
                      : WallpaperEvent.likedWallpaper(id: wallpaper.id),
                );
              },
              icon: SvgPicture.asset(
                liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
                height: 24.0,
                width: 24.0,
              ),
            );
          },
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
