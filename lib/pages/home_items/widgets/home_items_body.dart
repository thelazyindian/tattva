import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/core/tattva_items_model.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/liked_items/widgets/blog_category_section.dart';
import 'package:tattva/pages/liked_items/widgets/search_bar_dummy.dart';
import 'package:tattva/pages/liked_items/widgets/wallpaper_category_section.dart';
import 'package:tattva/router/router.gr.dart';

class HomeItemsBody extends StatelessWidget {
  final TattvaItemsModel tattvaItemsModel;

  const HomeItemsBody({Key? key, required this.tattvaItemsModel})
      : super(key: key);

  final audioCategoryName = 'Most Popular';
  final wallpaperCategoryName = 'Most Downloaded Wallpapers';
  final blogCategoryName = 'Must Read';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 16.0),
      shrinkWrap: true,
      children: [
        Center(
          child: Text(
            'Balance your Life',
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF646262),
            ),
          ),
        ),
        SearchBarDummy(),
        if (tattvaItemsModel.audios.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: AudioSubcategorySection(
              categoryName: audioCategoryName,
              uppercaseTitle: false,
              audios: tattvaItemsModel.audios,
              onTapNext: () =>
                  context.router.navigate(HomeItemsAudioSubCategoryRoute(
                title: audioCategoryName,
                audios: tattvaItemsModel.audios,
              )),
            ),
          ),
        if (tattvaItemsModel.blog.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: BlogCategorySection(
              categoryName: blogCategoryName,
              blogs: tattvaItemsModel.blog,
              onTapNext: () =>
                  context.router.navigate(HomeItemsBlogSubCategoryRoute(
                title: blogCategoryName,
              )),
              onTapItem: (idx) => context.router.push(HomeItemsBlogReaderRoute(
                blog: tattvaItemsModel.blog[idx],
                blogReaderTabType: BlogReaderTabType.homeItems,
              )),
            ),
          ),
        if (tattvaItemsModel.wallpaper.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: WallpaperCategorySection(
              categoryName: wallpaperCategoryName,
              wallpapers: tattvaItemsModel.wallpaper,
              onTapNext: () =>
                  context.router.navigate(HomeItemsWallpaperSubCategoryRoute(
                title: wallpaperCategoryName,
              )),
              onTapItem: (idx) {
                context.router.push(HomeItemsWallpaperExpandedRoute(
                  wallpaperEvent: WallpaperEvent.expandedWallpapers(
                    wallpapers: tattvaItemsModel.wallpaper,
                    wallpaperIdx: idx,
                  ),
                ));
              },
            ),
          ),
        AudioPlayerPreviewPadding(),
      ],
    );
  }
}
