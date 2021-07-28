import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/empty_results_view.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:tattva/utils/dimens.dart';

class WallpaperResultsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: getIt<SearchBloc>(),
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(
                strokeWidth: progressIndicatorStrokeWidth),
          );
        } else {
          return state.maybeMap(
            orElse: () => Container(),
            wallpapers: (_) => state.searchItems.fold(
              () => Container(),
              (sOrF) => sOrF.fold(
                (l) => ErrorLoadingListItemView(),
                (searchItems) => searchItems.wallpapers.isEmpty
                    ? EmptyResultsView()
                    : WallpapersGridView(
                        wallpapers: searchItems.wallpapers,
                        loadingMore: state.loadingMore,
                        completelyFetched:
                            searchItems.page == searchItems.nbPages,
                        loadMore: () =>
                            getIt<SearchBloc>().add(SearchEvent.loadMore()),
                        onTap: (index) {
                          context.router.push(SearchItemsWallpaperExpandedRoute(
                            wallpaperEvent: WallpaperEvent.expandedWallpapers(
                              wallpapers: searchItems.wallpapers,
                              wallpaperIdx: index,
                            ),
                          ));
                        },
                      ),
              ),
            ),
          );
        }
      },
    );
  }
}
