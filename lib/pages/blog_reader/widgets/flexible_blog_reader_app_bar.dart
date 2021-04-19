import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlexibleBlogReaderAppBar extends StatelessWidget {
  final String imageUrl;

  const FlexibleBlogReaderAppBar({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      expandedHeight: 200.0,
      floating: false,
      pinned: false,
      automaticallyImplyLeading: true,
      leading: Navigator.canPop(context)
          ? Center(
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: SvgPicture.asset(
                  'icons/back.svg',
                  color: Theme.of(context).primaryColor,
                  height: 14.0,
                  width: 14.0,
                ),
              ),
            )
          : null,
      flexibleSpace: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
        child: FlexibleSpaceBar(
          background: Hero(
            tag: imageUrl,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          stretchModes: [
            StretchMode.zoomBackground,
          ],
        ),
      ),
    );
  }
}
