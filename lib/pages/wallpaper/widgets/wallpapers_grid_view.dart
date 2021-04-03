import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WallpapersGridView extends StatelessWidget {
  final List<String> uriList;

  const WallpapersGridView({Key? key, required this.uriList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: uriList.length,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      itemBuilder: (context, index) => _imageCard(uriList[index]),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
    );
  }

  Widget _imageCard(String uri) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(uri, fit: BoxFit.cover),
    );
  }
}
