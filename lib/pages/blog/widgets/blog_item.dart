import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/pages/blog/widgets/blog_like_button.dart';
import 'package:tattva/pages/core/blog_title_bar.dart';
import 'package:tattva/router/router.gr.dart';

class BlogItem extends StatelessWidget {
  final Blog blog;
  final BlogReaderTabType blogReaderTabType;

  const BlogItem({
    Key? key,
    required this.blog,
    required this.blogReaderTabType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (blogReaderTabType == BlogReaderTabType.likedItems)
          ? context.router.push(LikedItemsBlogReaderRoute(
              blog: blog,
              blogReaderTabType: blogReaderTabType,
              enableAudioPreviewPadding: false,
            ))
          : (blogReaderTabType == BlogReaderTabType.homeItems)
              ? context.router.push(HomeItemsBlogReaderRoute(
                  blog: blog,
                  blogReaderTabType: blogReaderTabType,
                ))
              : context.router.push(BlogReaderRoute(
                  blog: blog,
                  blogReaderTabType: blogReaderTabType,
                )),
      child: Material(
        color: Colors.white,
        elevation: 4.0,
        shadowColor: Color(0x40BFBABA),
        borderRadius: BorderRadius.circular(16.0),
        child: SizedBox(
          height: 150.0,
          child: Row(
            children: [
              SizedBox(
                height: double.infinity,
                width: 125.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                  ),
                  child: Hero(
                    tag: blog.id,
                    child: Image.network(
                      blog.coverImage.first.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, .0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlogTitleBar(blog: blog),
                          const SizedBox(height: 16.0),
                          Text(
                            blog.summary,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: .0,
                      right: .0,
                      child: BlogLikeButton(
                        blogId: blog.id,
                        btnSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
