import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';

class WallpaperLikeButton extends StatelessWidget {
  final String wallpaperId;
  final double btnSize;
  final Color iconColor;

  const WallpaperLikeButton({
    Key? key,
    required this.wallpaperId,
    this.btnSize = 18.0,
    this.iconColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallpaperBloc, WallpaperState>(
      bloc: getIt<WallpaperBloc>(),
      builder: (context, wallpaperState) {
        return BlocBuilder<LikedItemsBloc, LikedItemsState>(
          bloc: getIt<LikedItemsBloc>(),
          builder: (context, likedItemsState) {
            final likedWallpapers = likedItemsState.likedItemsOption.fold(
                () => [],
                (sOrF) => sOrF.fold(
                      (l) => [],
                      (r) => r.likedWallpapers,
                    ));
            final likedWallpaperIds =
                List<String>.from(likedWallpapers.map((e) => e.id).toList());

            final liked =
                wallpaperState.likedWallpapers.contains(wallpaperId) ||
                    likedWallpaperIds.contains(wallpaperId);

            return IconButton(
              onPressed: () {
                getIt<WallpaperBloc>().add(
                  liked
                      ? WallpaperEvent.dislikedWallpaper(id: wallpaperId)
                      : WallpaperEvent.likedWallpaper(id: wallpaperId),
                );
              },
              icon: SvgPicture.asset(
                liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
                color: iconColor,
                height: btnSize,
                width: btnSize,
              ),
            );
          },
        );
      },
    );
  }
}
