import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/wallpaper/wallpaper_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/categories_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid_view.dart';

class WallpaperBody extends StatelessWidget {
  final List<WallpaperCategory> wallpaperCategories;

  const WallpaperBody({
    Key? key,
    required this.wallpaperCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
        //   child: Column(
        //     children: [
        //       Text(
        //         '2 Line description of what wallpaper signifies',
        //         style:
        //             TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        //       ),
        //       Text('or how they can be helpful',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //               color: Colors.grey, fontWeight: FontWeight.w500)),
        //     ],
        //   ),
        // ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          height: 30.0,
          child: BlocBuilder<WallpaperBloc, WallpaperState>(
            bloc: getIt<WallpaperBloc>(),
            builder: (context, state) {
              final selectedCategoryIdx = state.selectedCategory.fold(
                () => -1,
                (selectedCategory) => wallpaperCategories
                    .indexWhere((element) => element.id == selectedCategory.id),
              );

              return CategoriesBar(
                categoriesList: wallpaperCategories.map((e) => e.name).toList(),
                selectedCategoryIdx: selectedCategoryIdx,
                onItemSelected: (idx) {
                  getIt<WallpaperBloc>().add(
                    WallpaperEvent.selectedCategory(
                      id: wallpaperCategories[idx].id,
                    ),
                  );
                },
              );
            },
          ),
        ),
        Expanded(
          child: BlocBuilder<WallpaperBloc, WallpaperState>(
            bloc: getIt<WallpaperBloc>(),
            builder: (context, state) {
              return state.categoryError.fold(
                () => state.categoryLoading
                    ? const Center(child: CircularProgressIndicator())
                    : state.selectedCategory.fold(
                        () => Container(),
                        (selectedCategory) => WallpapersGridView(
                          loadingMore: state.loadingMore,
                          wallpapers: selectedCategory.wallpapers,
                          completelyFetched: selectedCategory.completelyFetched,
                          loadMore: () => getIt<WallpaperBloc>().add(
                            WallpaperEvent.selectedCategoryLoadMore(
                                id: selectedCategory.id),
                          ),
                        ),
                      ),
                (error) => ErrorLoadingListItemView(),
              );
            },
          ),
        ),
        AudioPlayerPreviewPadding(),
      ],
    );
  }
}
