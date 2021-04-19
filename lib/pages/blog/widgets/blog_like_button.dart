import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/injection.dart';

class BlogLikeButton extends StatelessWidget {
  final Blog blog;
  final double btnSize;
  final bool zeroPadding;
  const BlogLikeButton(
      {Key? key,
      required this.blog,
      required this.btnSize,
      this.zeroPadding = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogBloc, BlogState>(
      bloc: getIt<BlogBloc>(),
      builder: (context, state) {
        final liked = state.likedBlogs.contains(blog.id);
        return InkWell(
          onTap: () {
            getIt<BlogBloc>().add(
              liked
                  ? BlogEvent.dislikedBlog(id: blog.id)
                  : BlogEvent.likedBlog(id: blog.id),
            );
          },
          customBorder: CircleBorder(),
          child: Padding(
            padding: zeroPadding ? EdgeInsets.zero : const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
              height: btnSize,
              width: btnSize,
            ),
          ),
        );
      },
    );
  }
}
