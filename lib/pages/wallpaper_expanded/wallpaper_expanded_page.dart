import 'package:flutter/material.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_view.dart';

class WallpaperExpandedPage extends StatelessWidget {
  final List<Wallpaper> wallpapers;
  final int wallpaperIdx;

  const WallpaperExpandedPage({
    Key? key,
    required this.wallpapers,
    required this.wallpaperIdx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.none,
      ),
      body: WallPageView(
        wallpaperIdx: wallpaperIdx,
        wallpapers: wallpapers,
      ),
    );
  }
}
