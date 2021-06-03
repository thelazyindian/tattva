import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/blog/widgets/blog_grid_view.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';

class LikedItemsBlogSubCategoryPage extends StatelessWidget {
  final String title;

  const LikedItemsBlogSubCategoryPage({Key? key, required this.title})
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
              (likedItems) => BlogGridView(
                loadingMore: state.loadingMore,
                blogs: likedItems.likedBlogs,
                completelyFetched: state.completelyFetchedBlogs,
                blogReaderTabType: BlogReaderTabType.likedItems,
                loadMore: () => getIt<LikedItemsBloc>().add(
                  LikedItemsEvent.loadMoreBlogs(
                      id: likedItems.likedBlogs.last.id),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
