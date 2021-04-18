import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/blog/widgets/blog_body.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/error_loading_list_item_view.dart';
import 'package:tattva/router/router.gr.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: 'Blog',
        suffixIcon: 'icons/person.svg',
        customAppBarType: CustomAppBarType.head,
        onSuffixPressed: () {
          context.router.root
              .innerRouterOf<StackRouter>('HomeWrapperRoute')!
              .push(ProfileWrapperRoute());
        },
      ),
      body: RefreshIndicator(
        onRefresh: () async => getIt<BlogBloc>().add(BlogEvent.started()),
        child: BlocBuilder<BlogBloc, BlogState>(
          bloc: getIt<BlogBloc>()..add(BlogEvent.started()),
          builder: (context, state) {
            return state.blogCategoriesOption.fold(
              () => const Center(child: CircularProgressIndicator()),
              (sOrF) => sOrF.fold(
                (f) => ErrorLoadingListItemView(),
                (blogCategories) => BlogBody(blogCategories: blogCategories),
              ),
            );
          },
        ),
      ),
    );
  }
}
