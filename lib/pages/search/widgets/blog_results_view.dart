import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/search/widgets/blog_results_section.dart';
import 'package:tattva/pages/search/widgets/pagination_handler.dart';

class BlogResultsView extends StatelessWidget {
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
            blogs: (_) => state.searchItems.fold(
              () => Container(),
              (sOrF) => sOrF.fold(
                (l) => ErrorLoadingListItemView(),
                (searchItems) => PaginationHandler(
                  child: BlogResultsSection(
                    blogs: searchItems.blogs,
                  ),
                  loadingMore: state.loadingMore,
                  completelyFetched: searchItems.page == searchItems.nbPages,
                  loadMore: () =>
                      getIt<SearchBloc>().add(SearchEvent.loadMore()),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
