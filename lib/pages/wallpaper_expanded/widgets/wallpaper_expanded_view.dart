import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_image_card.dart';

class WallPageView extends StatefulWidget {
  final List<String> assetsList;

  const WallPageView({Key? key, required this.assetsList});

  @override
  _WallPageViewState createState() => _WallPageViewState();
}

class _WallPageViewState extends State<WallPageView> {
  late PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      viewportFraction: 0.8,
      initialPage: currentPage,
    );
    Future.delayed(Duration.zero).then(
      (_) => controller.animateToPage(
        0,
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      ),
    );
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
      itemCount: widget.assetsList.length,
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
          child: WallpaperExpandedImageCard(uri: widget.assetsList[index]),
        );
      },
    );
  }
}
