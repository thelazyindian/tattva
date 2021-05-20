import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share/share.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/pages/blog/widgets/blog_like_button.dart';

class BlogReaderTitleBar extends StatelessWidget {
  final bool backButton;
  final Blog blog;
  const BlogReaderTitleBar({
    Key? key,
    this.backButton = false,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (backButton)
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              splashRadius: 28.0,
              icon: SvgPicture.asset(
                'icons/back.svg',
                height: 14.0,
                width: 14.0,
              ),
            ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),
                ),
                const SizedBox(height: 4.0),
                Text(
                  'Published ${DateTime.now().difference(blog.date).inDays} days ago',
                  style: TextStyle(
                    color: Color(0xff908A8A),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          BlogLikeButton(
            blogId: blog.id,
            btnSize: 20.0,
            zeroPadding: true,
          ),
          const SizedBox(width: 16.0),
          InkWell(
            onTap: () => Share.share('Check out this blog ${blog.link}'),
            child: SvgPicture.asset(
              'icons/share.svg',
              height: 20.0,
              width: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
