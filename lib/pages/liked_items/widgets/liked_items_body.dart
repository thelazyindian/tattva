import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/liked_items/liked_items_data_model.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';
import 'package:tattva/pages/liked_items/widgets/blog_category_section.dart';
import 'package:tattva/pages/liked_items/widgets/wallpaper_category_section.dart';
import 'package:tattva/router/router.gr.dart';

class LikedItemsBody extends StatelessWidget {
  final LikedItemsDataModel likedItemsDataModel;

  const LikedItemsBody({Key? key, required this.likedItemsDataModel})
      : super(key: key);

  final audioCategoryName = 'Your Audios';
  final wallpaperCategoryName = 'Wallpapers you liked';
  final blogCategoryName = 'Blogs Saved';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 16.0),
      shrinkWrap: true,
      children: [
        // Center(
        //   child: Text(
        //     'Balance your Life',
        //     style: TextStyle(
        //       fontSize: 14.0,
        //       color: Color(0xFF646262),
        //     ),
        //   ),
        // ),
        // SearchBarDummy(),
        if (likedItemsDataModel.likedAudios.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: AudioSubcategorySection(
              categoryName: audioCategoryName,
              uppercaseTitle: false,
              audios: likedItemsDataModel.likedAudios,
              onTapNext: () =>
                  context.router.navigate(LikedItemsAudioSubCategoryRoute(
                title: audioCategoryName,
                audios: likedItemsDataModel.likedAudios,
                enableAudioPreviewPadding: false,
              )),
            ),
          ),
        if (likedItemsDataModel.likedBlogs.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: BlogCategorySection(
              categoryName: blogCategoryName,
              blogs: likedItemsDataModel.likedBlogs,
              onTapNext: () =>
                  context.router.navigate(LikedItemsBlogSubCategoryRoute(
                title: blogCategoryName,
              )),
              onTapItem: (idx) => context.router.push(LikedItemsBlogReaderRoute(
                blog: likedItemsDataModel.likedBlogs[idx],
                blogReaderTabType: BlogReaderTabType.likedItems,
                enableAudioPreviewPadding: false,
              )),
            ),
          ),
        if (likedItemsDataModel.likedWallpapers.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: WallpaperCategorySection(
              categoryName: wallpaperCategoryName,
              wallpapers: likedItemsDataModel.likedWallpapers,
              onTapNext: () =>
                  context.router.navigate(LikedItemsWallpaperSubCategoryRoute(
                title: wallpaperCategoryName,
              )),
              onTapItem: (idx) {
                context.router.push(LikedItemsWallpaperExpandedRoute(
                  wallpapers: likedItemsDataModel.likedWallpapers,
                  wallpaperIdx: idx,
                  enableAudioPreviewPadding: false,
                ));
              },
            ),
          ),
      ],
    );
  }
}
