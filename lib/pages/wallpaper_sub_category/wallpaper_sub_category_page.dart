import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid_view.dart';

class WallpaperSubCategoryPage extends StatelessWidget {
  final String title;

  const WallpaperSubCategoryPage({Key? key, required this.title})
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
            child: BlocBuilder<LikedItemsBloc, LikedItemsState>(
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
                      likedItemsView: true,
                      loadMore: () => getIt<LikedItemsBloc>().add(
                        LikedItemsEvent.loadMoreWallpapers(
                            id: likedItems.likedWallpapers.last.id),
                      ),
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