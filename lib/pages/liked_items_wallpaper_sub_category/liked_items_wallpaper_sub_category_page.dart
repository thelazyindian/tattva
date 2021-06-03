import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid_view.dart';
import 'package:tattva/router/router.gr.dart';

class LikedItemsWallpaperSubCategoryPage extends StatelessWidget {
  final String title;

  const LikedItemsWallpaperSubCategoryPage({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.subhead,
        title: title,
        titleAlignment: TextAlign.start,
        // suffixIcon: 'icons/search.svg',
      ),
      body: BlocBuilder<LikedItemsBloc, LikedItemsState>(
        bloc: getIt<LikedItemsBloc>(),
        builder: (context, state) {
          return state.likedItemsOption.fold(
            () => const Center(child: CircularProgressIndicator()),
            (sOrF) => sOrF.fold(
              (l) => ErrorLoadingListItemView(),
              (likedItems) => WallpapersGridView(
                loadingMore: state.loadingMore,
                wallpapers: likedItems.likedWallpapers,
                completelyFetched: state.completelyFetchedWallpapers,
                loadMore: () => getIt<LikedItemsBloc>().add(
                  LikedItemsEvent.loadMoreWallpapers(
                      id: likedItems.likedWallpapers.last.id),
                ),
                onTap: (index) =>
                    context.router.push(LikedItemsWallpaperExpandedRoute(
                  wallpaperEvent: WallpaperEvent.expandedWallpapers(
                    wallpapers: likedItems.likedWallpapers,
                    wallpaperIdx: index,
                  ),
                  enableAudioPreviewPadding: false,
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
