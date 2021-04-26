import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class PaginationHandler extends StatefulWidget {
  final Widget child;
  final bool loadingMore;
  final bool completelyFetched;
  final VoidCallback? loadMore;
  final bool likedItemsView;

  const PaginationHandler({
    Key? key,
    required this.child,
    this.loadingMore = false,
    this.loadMore,
    this.completelyFetched = false,
    this.likedItemsView = false,
  }) : super(key: key);

  @override
  _PaginationHandlerState createState() => _PaginationHandlerState();
}

class _PaginationHandlerState extends State<PaginationHandler> {
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
  void didUpdateWidget(covariant PaginationHandler oldWidget) {
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
        widget.child,
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
