import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  final PageController controller = PageController(
    viewportFraction: 0.8,
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    currentPage = widget.wallpaperIdx;
    // controller = PageController(
    //   viewportFraction: 0.8,
    //   initialPage: currentPage,
    // );
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 1),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) {
        setState(() {
          currentPage = value;
        });
      },
      scrollDirection: Axis.horizontal,
      itemCount: widget.wallpapers.length,
      controller: controller,
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            double value = 1.0;
            if (controller.position.haveDimensions) {
              value = controller.page! - index;
              value = ((value.abs() * 0.5)).clamp(0.0, 1.0);
            }
            double paddingTop = 20 + (Curves.easeOut.transform(value) * 100);
            double paddingBottom = 80 + (Curves.easeOut.transform(value) * 100);

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
            uri: widget.wallpapers[index].image.first.url,
          ),
        );
      },
    );
  }
}
