import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tattva/utils/dimens.dart';
import 'package:tattva/utils/others.dart';

enum CustomAppBarType { head, subhead, none }

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final double height;
  final TextAlign titleAlignment;
  final String? suffixIcon;
  final CustomAppBarType customAppBarType;
  final bool transparentSystemBars;
  final VoidCallback? onSuffixPressed;
  final VoidCallback? onPrefixPressed;

  CustomAppBar({
    this.title,
    this.height = kToolbarHeight,
    this.titleAlignment = TextAlign.center,
    this.suffixIcon,
    required this.customAppBarType,
    this.onSuffixPressed,
    this.onPrefixPressed,
    this.transparentSystemBars = false,
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
            if (onPrefixPressed != null || Navigator.canPop(context))
              IconButton(
                onPressed: onPrefixPressed ??
                    () {
                      Navigator.pop(context);
                    },
                splashRadius: 28.0,
                icon: SvgPicture.asset(
                  'icons/back.svg',
                  height: 14.0,
                  width: 14.0,
                ),
              )
            else
              const SizedBox(width: 48.0),
            if (customAppBarType != CustomAppBarType.none)
              Expanded(
                child: Text(
                  title!,
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize:
                        customAppBarType == CustomAppBarType.head ? 28.0 : 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: titleAlignment,
                ),
              ),
            if (suffixIcon != null)
              IconButton(
                onPressed: onSuffixPressed,
                splashRadius: 28.0,
                icon: SvgPicture.asset(
                  suffixIcon!,
                  height: 21.0,
                  width: 21.0,
                ),
              )
            else
              const SizedBox(width: 48.0),
          ],
        ),
      ),
    );
  }
}
