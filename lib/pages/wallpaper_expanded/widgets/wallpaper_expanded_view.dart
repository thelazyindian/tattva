import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_image_card.dart';

class WallPageView extends StatefulWidget {
  final int wallpaperIdx;
  final List<Wallpaper> wallpapers;

  const WallPageView({
    Key? key,
    required this.wallpaperIdx,
    required this.wallpapers,
  });

  @override
  _WallPageViewState createState() => _WallPageViewState();
}

class _WallPageViewState extends State<WallPageView> {
  int currentPage = 0;
  late double value;
  final PageController controller = PageController(
    viewportFraction: 0.65,
    initialPage: 0,
  );
  ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();
    debugPrint('WallPageView initState');
    currentPage = widget.wallpaperIdx;
    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    FlutterDownloader.registerCallback(downloadCallback);
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 1),
        curve: Curves.easeOut,
      );
    });
    value = 1.0;
  }

  @override
  void dispose() {
    debugPrint('WallPageView dispose');
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (page) {
        setState(() {
          currentPage = page;
        });
      },
      scrollDirection: Axis.horizontal,
      itemCount: widget.wallpapers.length,
      controller: controller,
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            if (controller.position.haveDimensions) {
              value = controller.page! - index;
              value = ((value.abs() * 0.5)).clamp(0.0, 1.0);
            } else {
              value = widget.wallpaperIdx == 0 && index == 0 ? 0.0 : 0.5;
            }
            double paddingTop = 20 + (Curves.easeOut.transform(value) * 100);
            double paddingBottom = 20 + (Curves.easeOut.transform(value) * 100);

            return Padding(
              padding: EdgeInsets.only(
                top: paddingTop,
                bottom: paddingBottom,
                left: 12.0,
                right: 12.0,
              ),
              child: child,
            );
          },
          child: WallpaperExpandedImageCard(
            wallpaper: widget.wallpapers[index],
            enableButtons: index == currentPage,
          ),
        );
      },
    );
  }
}
