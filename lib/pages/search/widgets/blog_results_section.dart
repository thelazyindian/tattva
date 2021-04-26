import 'package:flutter/material.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/pages/core/blog_title_bar.dart';

class BlogResultsSection extends StatelessWidget {
  final List<Blog> blogs;

  const BlogResultsSection({
    Key? key,
    required this.blogs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: blogs.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
      itemBuilder: (_, idx) {
        final blog = blogs[idx];

        return InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 4.0,
            ),
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                SizedBox(
                  height: 48.0,
                  width: 48.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      blog.coverImage.first.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: BlogTitleBar(blog: blog),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
