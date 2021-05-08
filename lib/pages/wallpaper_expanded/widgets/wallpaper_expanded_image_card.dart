import 'package:flutter/material.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_buttons.dart';

class WallpaperExpandedImageCard extends StatelessWidget {
  final Wallpaper wallpaper;
  final bool enableButtons;

  const WallpaperExpandedImageCard({
    Key? key,
    required this.wallpaper,
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
              wallpaper.thumbnail.first.url,
              fit: BoxFit.fitHeight,
              loadingBuilder: (_, child, ___) => Container(
                height: double.infinity,
                color: Colors.grey.shade200,
                child: child,
              ),
              errorBuilder: (_, __, ___) => Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey.shade200,
                child: Icon(
                  Icons.warning_rounded,
                  color: Colors.red,
                  size: 40.0,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        enableButtons
            ? WallpaperButtons(wallpaper: wallpaper)
            : const SizedBox(height: 24.0),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
