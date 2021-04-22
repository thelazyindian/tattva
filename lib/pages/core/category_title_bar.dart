import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTitleBar extends StatelessWidget {
  final String title;
  final VoidCallback? onTapNext;

  const CategoryTitleBar({
    Key? key,
    required this.title,
    this.onTapNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 17.0,
              letterSpacing: 0.8,
              fontWeight: FontWeight.w900,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: onTapNext,
            customBorder: CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'icons/forward.svg',
                height: 24.0,
                width: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
