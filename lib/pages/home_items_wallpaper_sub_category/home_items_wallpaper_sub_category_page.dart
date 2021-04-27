import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/home_items/home_items_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid_view.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class HomeItemsWallpaperSubCategoryPage extends StatelessWidget {
  final String title;

  const HomeItemsWallpaperSubCategoryPage({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.subhead,
        title: title,
        titleAlignment: TextAlign.start,
        suffixIcon: 'icons/search.svg',
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<HomeItemsBloc, HomeItemsState>(
              bloc: getIt<HomeItemsBloc>(),
              builder: (context, state) {
                return state.tattvaItemsOption.fold(
                  () => const Center(child: CircularProgressIndicator()),
                  (sOrF) => sOrF.fold(
                    (l) => ErrorLoadingListItemView(),
                    (tattvaItems) => WallpapersGridView(
                      loadingMore: false,
                      wallpapers: tattvaItems.wallpaper,
                      completelyFetched: true,
                      onTap: (index) =>
                          context.router.push(HomeItemsWallpaperExpandedRoute(
                        wallpapers: tattvaItems.wallpaper,
                        wallpaperIdx: index,
                      )),
                    ),
                  ),
                );
              },
            ),
          ),
          AudioPlayerPreviewPadding(),
        ],
      ),
    );
  }
}
