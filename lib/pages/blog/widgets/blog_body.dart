import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/blog/blog_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/blog/widgets/blog_grid_view.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/core/categories_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/utils/dimens.dart';

class BlogBody extends StatelessWidget {
  final List<BlogCategory> blogCategories;

  const BlogBody({Key? key, required this.blogCategories}) : super(key: key);

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
        //         '2 Line description of what blog signifies',
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
          child: BlocBuilder<BlogBloc, BlogState>(
            bloc: getIt<BlogBloc>(),
            builder: (context, state) {
              final selectedCategoryIdx = state.selectedCategory.fold(
                () => -1,
                (selectedCategory) => blogCategories
                    .indexWhere((element) => element.id == selectedCategory.id),
              );

              return CategoriesBar(
                categoriesList: blogCategories.map((e) => e.name).toList(),
                selectedCategoryIdx: selectedCategoryIdx,
                onItemSelected: (idx) {
                  getIt<BlogBloc>().add(
                    BlogEvent.selectedCategory(
                      id: blogCategories[idx].id,
                    ),
                  );
                },
              );
            },
          ),
        ),
        Expanded(
          child: BlocBuilder<BlogBloc, BlogState>(
            bloc: getIt<BlogBloc>(),
            builder: (context, state) {
              return state.categoryError.fold(
                () => state.categoryLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                            strokeWidth: progressIndicatorStrokeWidth))
                    : state.selectedCategory.fold(
                        () => Container(),
                        (selectedCategory) => BlogGridView(
                          loadingMore: state.loadingMore,
                          blogs: selectedCategory.blogs,
                          completelyFetched: selectedCategory.completelyFetched,
                          loadMore: () => getIt<BlogBloc>().add(
                              BlogEvent.selectedCategoryLoadMore(
                                  id: selectedCategory.id)),
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
