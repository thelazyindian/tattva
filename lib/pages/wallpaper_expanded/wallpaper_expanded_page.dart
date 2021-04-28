import 'package:flutter/material.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_view.dart';

class WallpaperExpandedPage extends StatelessWidget {
  final List<Wallpaper> wallpapers;
  final int wallpaperIdx;
  final bool enableAudioPreviewPadding;

  const WallpaperExpandedPage({
    Key? key,
    required this.wallpapers,
    required this.wallpaperIdx,
    this.enableAudioPreviewPadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.none,
      ),
      body: Column(
        children: [
          Expanded(
            child: WallPageView(
              wallpaperIdx: wallpaperIdx,
              wallpapers: wallpapers,
            ),
          ),
          if (enableAudioPreviewPadding) AudioPlayerPreviewPadding(),
        ],
      ),
    );
  }
}
