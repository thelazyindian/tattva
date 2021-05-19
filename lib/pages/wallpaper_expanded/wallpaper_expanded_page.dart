import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_view.dart';

class WallpaperExpandedPage extends StatelessWidget {
  final WallpaperEvent wallpaperEvent;
  final bool enableAudioPreviewPadding;

  const WallpaperExpandedPage({
    Key? key,
    required this.wallpaperEvent,
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
            child: BlocBuilder<WallpaperBloc, WallpaperState>(
              bloc: getIt<WallpaperBloc>()..add(wallpaperEvent),
              builder: (context, state) {
                if (state.expandedViewLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return state.expandedViewWallpapers.fold(
                  () => const Center(child: CircularProgressIndicator()),
                  (sOrF) => sOrF.fold(
                    (l) => ErrorLoadingListItemView(),
                    (wallpapers) => WallPageView(
                      wallpaperIdx: state.wallpaperIdx,
                      wallpapers: wallpapers,
                    ),
                  ),
                );
              },
            ),
          ),
          if (enableAudioPreviewPadding) AudioPlayerPreviewPadding(),
        ],
      ),
    );
  }
}
