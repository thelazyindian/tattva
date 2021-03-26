import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String text;
  final double height;
  final TextAlign titleAlignment;

  const CustomAppBar({
    required this.text,
    this.height = kToolbarHeight,
    this.titleAlignment = TextAlign.center,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        padding:
            const EdgeInsets.symmetric(horizontal: appBarPaddingHorizontal),
        height: preferredSize.height,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              splashRadius: 28.0,
              icon: SvgPicture.asset(
                'icons/back.svg',
                height: 14.0,
                width: 14.0,
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: titleAlignment,
              ),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 28.0,
              icon: SvgPicture.asset(
                'icons/person.svg',
                height: 21.0,
                width: 21.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
