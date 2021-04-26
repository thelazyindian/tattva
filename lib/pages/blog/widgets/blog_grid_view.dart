import 'package:flutter/material.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/pages/blog/widgets/blog_item.dart';

class BlogGridView extends StatefulWidget {
  final List<Blog> blogs;
  final bool loadingMore;
  final bool completelyFetched;
  final VoidCallback? loadMore;
  final BlogReaderTabType blogReaderTabType;

  const BlogGridView({
    Key? key,
    required this.blogs,
    this.loadingMore = false,
    this.completelyFetched = false,
    this.loadMore,
    this.blogReaderTabType = BlogReaderTabType.blogs,
  }) : super(key: key);

  @override
  _BlogGridViewState createState() => _BlogGridViewState();
}

class _BlogGridViewState extends State<BlogGridView> {
  late ScrollController _scrollController;
  @override
  void initState() {
    debugPrint('BlogGridView initState');
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0 &&
            !widget.completelyFetched) {
          widget.loadMore?.call();
        }
      }
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BlogGridView oldWidget) {
    if (oldWidget.loadingMore != widget.loadingMore && widget.loadingMore) {
      debugPrint(' _scrollController.animateTo');
      _scrollController.animateTo(
        _scrollController.offset + 36.0,
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('BlogGridView build');

    return widget.blogs.isEmpty
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
                itemCount: widget.blogs.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                itemBuilder: (context, index) => BlogItem(
                  blog: widget.blogs[index],
                  blogReaderTabType: widget.blogReaderTabType,
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
