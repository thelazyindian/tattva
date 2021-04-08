import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/router/router.gr.dart';

class WallpapersGridView extends StatelessWidget {
  final List<Wallpaper> wallpapers;

  const WallpapersGridView({Key? key, required this.wallpapers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: wallpapers.length,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          itemBuilder: (context, index) => _imageCard(context, index),
          staggeredTileBuilder: (index) => StaggeredTile.fit(2),
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        ),
        BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
          bloc: getIt<AudioPlayerBloc>(),
          builder: (context, state) {
            return SizedBox(
              height: state.map(
                expanded: (_) => .0,
                collapsed: (_) => 64.0,
                none: (_) => .0,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _imageCard(BuildContext context, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
        onTap: () {
          context.router.push(WallpaperExpandedRoute(wallpaperIdx: index));
        },
        child: Stack(
          children: [
            Image.network(
              wallpapers[index].thumbnail.first.url,
              fit: BoxFit.cover,
            ),
            BlocBuilder<WallpaperBloc, WallpaperState>(
              bloc: getIt<WallpaperBloc>(),
              builder: (context, state) {
                final liked =
                    state.likedWallpapers.contains(wallpapers[index].id);
                return Positioned(
                  bottom: .0,
                  right: .0,
                  child: IconButton(
                    onPressed: () {
                      getIt<WallpaperBloc>().add(
                        liked
                            ? WallpaperEvent.dislikedWallpaper(
                                id: wallpapers[index].id)
                            : WallpaperEvent.likedWallpaper(
                                id: wallpapers[index].id),
                      );
                    },
                    icon: SvgPicture.asset(
                      liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
                      color: Colors.white,
                      height: 18.0,
                      width: 18.0,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
