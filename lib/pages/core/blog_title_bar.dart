import 'package:flutter/material.dart';
import 'package:tattva/domain/blog/blog.dart';

class BlogTitleBar extends StatelessWidget {
  final Blog blog;

  const BlogTitleBar({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
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
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
      ],
    );
  }
}
