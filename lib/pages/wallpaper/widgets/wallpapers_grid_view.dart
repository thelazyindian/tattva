import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpaper_like_button.dart';
import 'package:tattva/router/router.gr.dart';

class WallpapersGridView extends StatefulWidget {
  final List<Wallpaper> wallpapers;
  final bool loadingMore;
  final bool completelyFetched;
  final VoidCallback? loadMore;
  final bool likedItemsView;

  const WallpapersGridView({
    Key? key,
    required this.wallpapers,
    this.loadingMore = false,
    this.loadMore,
    this.completelyFetched = false,
    this.likedItemsView = false,
  }) : super(key: key);

  @override
  _WallpapersGridViewState createState() => _WallpapersGridViewState();
}

class _WallpapersGridViewState extends State<WallpapersGridView> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels != 0 &&
            !widget.completelyFetched) {
          widget.loadMore?.call();
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: widget.wallpapers.length,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          itemBuilder: (context, index) => _imageCard(context, index),
          staggeredTileBuilder: (index) => StaggeredTile.fit(2),
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        ),
        if (widget.loadingMore)
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              height: 20.0,
              width: 20.0,
              child: CircularProgressIndicator(strokeWidth: 2.5),
            ),
          ),
      ],
    );
  }

  Widget _imageCard(BuildContext context, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
        onTap: () => widget.likedItemsView
            ? context.router.push(LikedItemsWallpaperExpandedRoute(
                wallpapers: widget.wallpapers,
                wallpaperIdx: index,
              ))
            : context.router.push(WallpaperExpandedRoute(
                wallpapers: widget.wallpapers,
                wallpaperIdx: index,
              )),
        child: Stack(
          children: [
            Image.network(
              widget.wallpapers[index].thumbnail.first.url,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: .0,
              right: .0,
              child: WallpaperLikeButton(
                wallpaperId: widget.wallpapers[index].id,
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
