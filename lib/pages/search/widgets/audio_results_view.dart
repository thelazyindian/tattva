import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/empty_results_view.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/search/widgets/audio_results_section.dart';
import 'package:tattva/pages/search/widgets/pagination_handler.dart';
import 'package:tattva/utils/dimens.dart';

class AudioResultsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      bloc: getIt<SearchBloc>(),
      builder: (context, state) {
        if (state.loading) {
          return Center(
            child: CircularProgressIndicator(
                strokeWidth: progressIndicatorStrokeWidth),
          );
        } else {
          return state.maybeMap(
            orElse: () => Container(),
            audios: (_) => state.searchItems.fold(
              () => Container(),
              (sOrF) => sOrF.fold(
                (l) => ErrorLoadingListItemView(),
                (searchItems) => searchItems.audios.isEmpty
                    ? EmptyResultsView()
                    : PaginationHandler(
                        child: AudioResultsSection(
                          audios: searchItems.audios,
                        ),
                        loadingMore: state.loadingMore,
                        completelyFetched:
                            searchItems.page == searchItems.nbPages,
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
