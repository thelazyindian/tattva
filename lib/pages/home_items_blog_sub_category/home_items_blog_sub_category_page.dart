import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/home_items/home_items_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/blog/widgets/blog_grid_view.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/utils/dimens.dart';

class HomeItemsBlogSubCategoryPage extends StatelessWidget {
  final String title;

  const HomeItemsBlogSubCategoryPage({Key? key, required this.title})
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
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<HomeItemsBloc, HomeItemsState>(
              bloc: getIt<HomeItemsBloc>(),
              builder: (context, state) {
                return state.tattvaItemsOption.fold(
                  () => const Center(
                      child: CircularProgressIndicator(
                          strokeWidth: progressIndicatorStrokeWidth)),
                  (sOrF) => sOrF.fold(
                    (l) => ErrorLoadingListItemView(),
                    (tattvaItems) => BlogGridView(
                      loadingMore: false,
                      blogs: tattvaItems.blog,
                      completelyFetched: true,
                      blogReaderTabType: BlogReaderTabType.homeItems,
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
