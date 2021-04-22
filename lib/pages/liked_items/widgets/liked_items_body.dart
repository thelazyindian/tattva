import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/domain/liked_items/liked_items_data_model.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/liked_items/widgets/blog_category_section.dart';
import 'package:tattva/pages/liked_items/widgets/wallpaper_category_section.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';

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
        Center(
          child: Text(
            'Balance your Life',
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF646262),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 20.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 24.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Color(0xFFF2F3F7),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF052D4D),
                  ),
                ),
              ),
              SvgPicture.asset('icons/search.svg'),
            ],
          ),
        ),
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
            ),
          ),
        AudioPlayerPreviewPadding(),
      ],
    );
  }
}
