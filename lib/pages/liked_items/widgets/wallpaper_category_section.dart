import 'package:flutter/material.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/core/category_title_bar.dart';

class WallpaperCategorySection extends StatelessWidget {
  final String categoryName;
  final List<Wallpaper> wallpapers;
  final VoidCallback? onTapNext;
  final Function(int) onTapItem;

  const WallpaperCategorySection({
    Key? key,
    required this.categoryName,
    required this.wallpapers,
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
        SizedBox(
          height: 200.0,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            scrollDirection: Axis.horizontal,
            itemCount: wallpapers.length,
            separatorBuilder: (context, idx) => const SizedBox(width: 10.0),
            itemBuilder: (context, idx) {
              final wallpaper = wallpapers[idx];
              return ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: InkWell(
                  onTap: () => onTapItem(idx),
                  child: Image.network(
                    wallpaper.imageSmall,
                    fit: BoxFit.cover,
                    loadingBuilder: (_, child, ___) => Container(
                      width: 120.0,
                      color: Colors.grey.shade200,
                      child: child,
                    ),
                    errorBuilder: (_, __, ___) => Container(
                      width: 120.0,
                      color: Colors.grey.shade200,
                      child: Icon(
                        Icons.warning_rounded,
                        color: Colors.red,
                        size: 40.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
