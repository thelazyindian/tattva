import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tattva/router/router.gr.dart';

class WallpapersGridView extends StatelessWidget {
  final List<Wallpaper> wallpapers;

  const WallpapersGridView({Key? key, required this.wallpapers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: wallpapers.length,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      itemBuilder: (context, index) => _imageCard(context, index),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
    );
  }

  Widget _imageCard(BuildContext context, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
        onTap: () {
          context.router.push(WallpaperExpandedRoute(wallpaperIdx: index));
        },
        child: Image.network(
          wallpapers[index].thumbnail.first.url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
