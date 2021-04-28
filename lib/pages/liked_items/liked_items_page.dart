import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/empty_results_view.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/liked_items/widgets/liked_items_body.dart';
import 'package:auto_route/auto_route.dart';

class LikedItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: "Liked",
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: RefreshIndicator(
        onRefresh: () async =>
            getIt<LikedItemsBloc>().add(LikedItemsEvent.started()),
        child: BlocBuilder<LikedItemsBloc, LikedItemsState>(
          bloc: getIt<LikedItemsBloc>()..add(LikedItemsEvent.started()),
          builder: (context, state) {
            return state.likedItemsOption.fold(
              () => const Center(child: CircularProgressIndicator()),
              (likedItemsSorF) => likedItemsSorF.fold(
                (failure) => ErrorLoadingListItemView(),
                (likedItems) => likedItems.likedAudios.isEmpty &&
                        likedItems.likedBlogs.isEmpty &&
                        likedItems.likedWallpapers.isEmpty
                    ? EmptyResultsView(
                        message: 'NO LIKED ITEMS FOUND!',
                      )
                    : LikedItemsBody(
                        likedItemsDataModel: likedItems,
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
