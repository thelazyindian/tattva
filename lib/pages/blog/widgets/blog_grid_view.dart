import 'package:flutter/material.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/blog/blog_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/blog/widgets/blog_item.dart';

class BlogGridView extends StatefulWidget {
  final BlogCategory blogCategory;
  final bool loadingMore;

  const BlogGridView({
    Key? key,
    required this.blogCategory,
    this.loadingMore = false,
  }) : super(key: key);

  @override
  _BlogGridViewState createState() => _BlogGridViewState();
}

class _BlogGridViewState extends State<BlogGridView> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0 &&
            !widget.blogCategory.completelyFetched) {
          getIt<BlogBloc>().add(
              BlogEvent.selectedCategoryLoadMore(id: widget.blogCategory.id));
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.blogCategory.blogs.isEmpty
        ? Center(child: Text('No Items Found.'))
        : ListView(
            physics: AlwaysScrollableScrollPhysics(),
            controller: _scrollController,
            children: [
              ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                itemCount: widget.blogCategory.blogs.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                itemBuilder: (context, index) => BlogItem(
                  blog: widget.blogCategory.blogs[index],
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
              if (widget.loadingMore)
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    height: 20.0,
                    width: 20.0,
                    child: CircularProgressIndicator(strokeWidth: 2.5),
                  ),
                ),
            ],
          );
  }
}
