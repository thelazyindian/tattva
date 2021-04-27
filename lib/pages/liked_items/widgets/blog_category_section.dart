import 'package:flutter/material.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/pages/core/blog_title_bar.dart';
import 'package:tattva/pages/core/category_title_bar.dart';

class BlogCategorySection extends StatelessWidget {
  final String categoryName;
  final List<Blog> blogs;
  final VoidCallback? onTapNext;
  final Function(int) onTapItem;

  const BlogCategorySection({
    Key? key,
    required this.categoryName,
    required this.blogs,
    this.onTapNext,
    required this.onTapItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CategoryTitleBar(
          title: categoryName,
          onTapNext: onTapNext,
        ),
        const SizedBox(height: 4.0),
        ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: blogs.length,
          separatorBuilder: (context, idx) => const SizedBox(height: 12.0),
          itemBuilder: (context, idx) {
            final blog = blogs[idx];
            return InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onTap: () => onTapItem(idx),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 18.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40BFBABA),
                      offset: Offset(4.0, 4.0),
                      blurRadius: 4.0,
                    ),
                    BoxShadow(
                      color: Color(0x40BFBABA),
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 4.0,
                    ),
                  ],
                ),
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
        ),
      ],
    );
  }
}
