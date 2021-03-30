import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final _navigationItems = [
    {
      'default': 'music.svg',
      'active': 'music.svg',
      'tooltip': 'Audio',
    },
    {
      'default': 'imageOutline.svg',
      'active': 'image.svg',
      'tooltip': 'Wallpapers',
    },
    {
      'default': 'homeOutline.svg',
      'active': 'home.svg',
      'tooltip': 'Home',
    },
    {
      'default': 'readerOutline.svg',
      'active': 'reader.svg',
      'tooltip': 'Blogs',
    },
    {
      'default': 'createOutline.svg',
      'active': 'create.svg',
      'tooltip': 'Tip of the day',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.0,
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
        children: _navigationItems
            .map(
              (e) => IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('icons/${e['default']!}'),
                tooltip: e['tooltip']!,
              ),
            )
            .toList(),
      ),
    );
  }
}
