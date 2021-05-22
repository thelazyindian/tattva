import 'package:flutter/material.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpaper_like_button.dart';

class WallpaperThumbnail extends StatefulWidget {
  final Wallpaper wallpaper;
  final VoidCallback? onTap;

  const WallpaperThumbnail({
    Key? key,
    required this.wallpaper,
    this.onTap,
  }) : super(key: key);
  @override
  _WallpaperThumbnailState createState() => _WallpaperThumbnailState();
}

class _WallpaperThumbnailState extends State<WallpaperThumbnail> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(minHeight: 230.0, maxHeight: 230.0),
          color: Colors.grey.shade200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                widget.wallpaper.imageSmall,
                fit: BoxFit.cover,
                loadingBuilder: (_, child, ___) => child,
                errorBuilder: (_, __, ___) => Icon(
                  Icons.warning_rounded,
                  color: Colors.red,
                  size: 40.0,
                ),
              ),
              Positioned(
                bottom: .0,
                right: .0,
                child: WallpaperLikeButton(
                  wallpaperId: widget.wallpaper.id,
                  iconColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
