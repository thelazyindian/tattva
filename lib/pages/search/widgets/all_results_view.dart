import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/category_title_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/search/widgets/audio_results_section.dart';
import 'package:tattva/pages/search/widgets/blog_results_section.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid.dart';

class AllResultsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: getIt<SearchBloc>(),
      builder: (context, state) {
        if (state.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return state.maybeMap(
            orElse: () => Container(),
            all: (_) => state.searchItems.fold(
              () => Container(),
              (sOrF) => sOrF.fold(
                (l) => ErrorLoadingListItemView(),
                (searchItems) => ListView(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  children: [
                    if (searchItems.audios.isNotEmpty) ...[
                      CategoryTitleBar(
                        title: 'AUDIOS',
                        onTapNext: () {
                          context.read<TabController>().animateTo(1);
                          getIt<SearchBloc>()
                              .add(SearchEvent.changedTab(index: 1));
                        },
                      ),
                      const SizedBox(height: 4.0),
                      AudioResultsSection(
                        audios: searchItems.audios,
                      ),
                    ],
                    if (searchItems.blogs.isNotEmpty) ...[
                      const SizedBox(height: 8.0),
                      CategoryTitleBar(
                        title: 'BLOGS',
                        onTapNext: () {
                          context.read<TabController>().animateTo(2);
                          getIt<SearchBloc>()
                              .add(SearchEvent.changedTab(index: 2));
                        },
                      ),
                      const SizedBox(height: 4.0),
                      BlogResultsSection(
                        blogs: searchItems.blogs,
                      ),
                    ],
                    if (searchItems.wallpapers.isNotEmpty) ...[
                      const SizedBox(height: 8.0),
                      CategoryTitleBar(
                        title: 'WALLPAPERS',
                        onTapNext: () {
                          context.read<TabController>().animateTo(3);
                          getIt<SearchBloc>()
                              .add(SearchEvent.changedTab(index: 3));
                        },
                      ),
                      const SizedBox(height: 4.0),
                      WallpapersGrid(
                        wallpapers: searchItems.wallpapers,
                        onTap: (index) {},
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
