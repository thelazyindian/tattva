import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/wallpaper/wallpaper_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/router/router.gr.dart';

class WallpapersGridView extends StatefulWidget {
  final WallpaperCategory wallpaperCategory;
  final bool loadingMore;

  const WallpapersGridView({
    Key? key,
    required this.wallpaperCategory,
    this.loadingMore = false,
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
            !widget.wallpaperCategory.completelyFetched) {
          getIt<WallpaperBloc>().add(WallpaperEvent.selectedCategoryLoadMore(
              id: widget.wallpaperCategory.id));
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
          itemCount: widget.wallpaperCategory.wallpapers.length,
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
        onTap: () {
          context.router.push(WallpaperExpandedRoute(wallpaperIdx: index));
        },
        child: Stack(
          children: [
            Image.network(
              widget.wallpaperCategory.wallpapers[index].thumbnail.first.url,
              fit: BoxFit.cover,
            ),
            BlocBuilder<WallpaperBloc, WallpaperState>(
              bloc: getIt<WallpaperBloc>(),
              builder: (context, state) {
                final liked = state.likedWallpapers
                    .contains(widget.wallpaperCategory.wallpapers[index].id);
                return Positioned(
                  bottom: .0,
                  right: .0,
                  child: IconButton(
                    onPressed: () {
                      getIt<WallpaperBloc>().add(
                        liked
                            ? WallpaperEvent.dislikedWallpaper(
                                id: widget
                                    .wallpaperCategory.wallpapers[index].id)
                            : WallpaperEvent.likedWallpaper(
                                id: widget
                                    .wallpaperCategory.wallpapers[index].id),
                      );
                    },
                    icon: SvgPicture.asset(
                      liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
                      color: Colors.white,
                      height: 18.0,
                      width: 18.0,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
