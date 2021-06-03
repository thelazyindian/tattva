import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_view.dart';

class WallpaperExpandedPage extends StatefulWidget {
  final WallpaperEvent wallpaperEvent;
  final bool enableAudioPreviewPadding;

  const WallpaperExpandedPage({
    Key? key,
    required this.wallpaperEvent,
    this.enableAudioPreviewPadding = true,
  }) : super(key: key);

  @override
  _WallpaperExpandedPageState createState() => _WallpaperExpandedPageState();
}

class _WallpaperExpandedPageState extends State<WallpaperExpandedPage> {
  @override
  void initState() {
    debugPrint('WallpaperExpandedPage initState');
    getIt<WallpaperBloc>().add(widget.wallpaperEvent);
    super.initState();
  }

  @override
  void dispose() {
    debugPrint('WallpaperExpandedPage dispose');
    super.dispose();
  }

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
              bloc: getIt<WallpaperBloc>(),
              builder: (context, state) {
                if (state.expandedViewLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return state.expandedViewWallpapers.fold(
                  () => const Center(child: CircularProgressIndicator()),
                  (sOrF) => sOrF.fold(
                    (l) => ErrorLoadingListItemView(),
                    (wallpapers) => widget.wallpaperEvent.maybeMap(
                      wallpaperFromId: (_) => WallPageView(
                        wallpaperIdx: state.wallpaperIdx,
                        wallpapers: wallpapers,
                      ),
                      expandedWallpapers: (e) => WallPageView(
                        wallpaperIdx: e.wallpaperIdx,
                        wallpapers: e.wallpapers,
                      ),
                      orElse: () => Container(),
                    ),
                  ),
                );
              },
            ),
          ),
          if (widget.enableAudioPreviewPadding) AudioPlayerPreviewPadding(),
        ],
      ),
    );
  }
}
