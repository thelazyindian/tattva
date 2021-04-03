import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tattva/pages/core/categories_bar.dart';

import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid_view.dart';

class WallpaperBody extends StatefulWidget {
  @override
  _WallpaperBodyState createState() => _WallpaperBodyState();
}

class _WallpaperBodyState extends State<WallpaperBody> {
  List<String> categoriesList = ["AIR", "WATER", "FIRE", "EARTH", "SPACE"];
  List<String> assetsList = [
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                '2 Line description of what wallpaper signifies',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
              Text('or how they can be helpful',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          height: 30.0,
          child: CategoriesBar(
            categoriesList: categoriesList,
            selectedCategoryIdx: 0,
            onItemSelected: (idx) {
              selectedIndex = idx;
            },
          ),
        ),
        Expanded(
          child: WallpapersGridView(uriList: assetsList),
        ),
        const SizedBox(height: 73.0),
      ],
    );
  }
}
