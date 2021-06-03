import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/utils/dimens.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: bottomNavbarHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28.0),
          topRight: Radius.circular(28.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A54575C),
            offset: Offset(2.0, -5.0),
            blurRadius: 17.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _navigationItems.map(
          (e) {
            final enabled = context.tabsRouter.activeIndex == e['index'];
            return IconButton(
              onPressed: enabled
                  ? null
                  : () {
                      context.tabsRouter.setActiveIndex(e['index'] as int);
                    },
              icon: SvgPicture.asset(
                enabled ? 'icons/${e['active']}' : 'icons/${e['default']}',
              ),
              tooltip: e['tooltip']! as String,
            );
          },
        ).toList(),
      ),
    );
  }
}

final _navigationItems = [
  {
    'default': 'musicOutline.svg',
    'active': 'music.svg',
    'tooltip': 'Audio',
    'index': 0,
  },
  {
    'default': 'imageOutline.svg',
    'active': 'image.svg',
    'tooltip': 'Wallpapers',
    'index': 1,
  },
  {
    'default': 'homeOutline.svg',
    'active': 'home.svg',
    'tooltip': 'Home',
    'index': 2,
  },
  {
    'default': 'readerOutline.svg',
    'active': 'reader.svg',
    'tooltip': 'Blogs',
    'index': 3,
  },
  {
    'default': 'createOutline.svg',
    'active': 'create.svg',
    'tooltip': 'Tip of the day',
    'index': 4,
  },
];
