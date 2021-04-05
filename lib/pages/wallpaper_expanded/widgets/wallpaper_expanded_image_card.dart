import 'package:flutter/material.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_buttons.dart';

class WallpaperExpandedImageCard extends StatelessWidget {
  final String uri;

  const WallpaperExpandedImageCard({
    Key? key,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              uri,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        WallpaperButtons(),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
