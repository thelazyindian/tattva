import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/injection.dart';

class BlogLikeButton extends StatelessWidget {
  final String blogId;
  final double btnSize;
  final bool zeroPadding;
  const BlogLikeButton(
      {Key? key,
      required this.blogId,
      required this.btnSize,
      this.zeroPadding = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogBloc, BlogState>(
      bloc: getIt<BlogBloc>(),
      builder: (context, blogState) {
        return BlocBuilder<LikedItemsBloc, LikedItemsState>(
          bloc: getIt<LikedItemsBloc>(),
          builder: (context, likedItemsState) {
            final likedBlogs = likedItemsState.likedItemsOption.fold(
                () => [],
                (sOrF) => sOrF.fold(
                      (l) => [],
                      (r) => r.likedBlogs,
                    ));
            final likedBlogIds =
                List<String>.from(likedBlogs.map((e) => e.id).toList());

            final liked = blogState.likedBlogs.contains(blogId) ||
                likedBlogIds.contains(blogId);
            return InkWell(
              onTap: () {
                getIt<BlogBloc>().add(
                  liked
                      ? BlogEvent.dislikedBlog(id: blogId)
                      : BlogEvent.likedBlog(id: blogId),
                );
              },
              customBorder: CircleBorder(),
              child: Padding(
                padding:
                    zeroPadding ? EdgeInsets.zero : const EdgeInsets.all(16.0),
                child: SvgPicture.asset(
                  liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
                  height: btnSize,
                  width: btnSize,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
