import 'package:flutter/material.dart';
import 'package:tattva/domain/core/tattva_image.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_buttons.dart';

class WallpaperExpandedImageCard extends StatelessWidget {
  final TattvaImage tattvaImage;
  final bool enableButtons;

  const WallpaperExpandedImageCard({
    Key? key,
    required this.tattvaImage,
    this.enableButtons = false,
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
              tattvaImage.url,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        enableButtons
            ? WallpaperButtons(tattvaImage: tattvaImage)
            : const SizedBox(height: 24.0),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
