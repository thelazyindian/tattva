import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/home_items/home_items_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/empty_results_view.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/pages/home_items/widgets/home_items_body.dart';
import 'package:tattva/router/router.gr.dart';

class HomeItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: "Tattva App",
        suffixIcon: 'icons/person.svg',
        customAppBarType: CustomAppBarType.head,
        onSuffixPressed: () {
          context.router.root
              .innerRouterOf<StackRouter>('HomeWrapperRoute')!
              .push(ProfileWrapperRoute());
        },
      ),
      body: RefreshIndicator(
        onRefresh: () async =>
            getIt<HomeItemsBloc>().add(HomeItemsEvent.started()),
        child: BlocBuilder<HomeItemsBloc, HomeItemsState>(
          bloc: getIt<HomeItemsBloc>()..add(HomeItemsEvent.started()),
          builder: (context, state) {
            return state.tattvaItemsOption.fold(
              () => const Center(child: CircularProgressIndicator()),
              (tattvaItemsSorF) => tattvaItemsSorF.fold(
                (failure) => ErrorLoadingListItemView(),
                (tattvaItems) => tattvaItems.audios.isEmpty &&
                        tattvaItems.blog.isEmpty &&
                        tattvaItems.wallpaper.isEmpty
                    ? EmptyResultsView(
                        message: 'NO ITEMS FOUND!',
                      )
                    : HomeItemsBody(
                        tattvaItemsModel: tattvaItems,
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
