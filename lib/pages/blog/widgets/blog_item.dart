import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/pages/blog/widgets/blog_like_button.dart';
import 'package:tattva/router/router.gr.dart';

class BlogItem extends StatelessWidget {
  final Blog blog;

  const BlogItem({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(BlogReaderRoute(blog: blog)),
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
                    tag: blog.coverImage.first.url,
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
                          Text(
                            blog.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              Text(
                                blog.author,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xff908A8A),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                height: 5.0,
                                width: 5.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff908A8A),
                                ),
                              ),
                              Text(
                                '${blog.durationInMins} mins',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  color: Color(0xff908A8A),
                                ),
                              ),
                            ],
                          ),
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
                        blog: blog,
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
