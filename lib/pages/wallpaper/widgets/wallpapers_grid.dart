import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpaper_thumbnail.dart';

class WallpapersGrid extends StatelessWidget {
  final List<Wallpaper> wallpapers;
  final Function(int index) onTap;

  const WallpapersGrid({
    Key? key,
    required this.wallpapers,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: wallpapers.length,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      itemBuilder: (context, index) => WallpaperThumbnail(
        wallpaper: wallpapers[index],
        onTap: () => onTap(index),
      ),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
