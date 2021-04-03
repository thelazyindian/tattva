import 'package:flutter/material.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_view.dart';

class WallpaperExpandedPage extends StatelessWidget {
  final List<String> assetsList = [
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
    'images/pexels-calm-1.jpg',
    'images/pexels-calm-2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.none,
      ),
      body: WallPageView(assetsList: assetsList),
    );
  }
}
