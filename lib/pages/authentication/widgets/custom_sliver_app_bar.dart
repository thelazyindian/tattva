import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/constants/dimens.dart';
import 'package:tattva/constants/others.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;

  const CustomSliverAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      expandedHeight: authPageAppBarHeight,
      floating: false,
      pinned: false,
      automaticallyImplyLeading: true,
      leading: Center(
        child: SvgPicture.asset(
          'icons/back.svg',
          height: authBackBtnSize,
          width: authBackBtnSize,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: authAppBarPadding,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        stretchModes: [],
      ),
    );
  }
}
