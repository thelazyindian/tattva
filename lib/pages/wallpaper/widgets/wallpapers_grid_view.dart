import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpapers_grid.dart';

class WallpapersGridView extends StatefulWidget {
  final List<Wallpaper> wallpapers;
  final bool loadingMore;
  final bool completelyFetched;
  final VoidCallback? loadMore;
  final Function(int index) onTap;

  const WallpapersGridView({
    Key? key,
    required this.wallpapers,
    this.loadingMore = false,
    this.loadMore,
    this.completelyFetched = false,
    required this.onTap,
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
  void didUpdateWidget(covariant WallpapersGridView oldWidget) {
    if (oldWidget.loadingMore != widget.loadingMore && widget.loadingMore) {
      debugPrint(' _scrollController.animateTo');
      _scrollController.animateTo(
        _scrollController.offset + 36.0,
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        WallpapersGrid(
          wallpapers: widget.wallpapers,
          onTap: widget.onTap,
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
}
