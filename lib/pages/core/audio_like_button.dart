import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioLikeButton extends StatelessWidget {
  final bool liked;
  final VoidCallback? onTap;

  const AudioLikeButton({
    Key? key,
    required this.liked,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      splashRadius: 24.0,
      icon: SvgPicture.asset(
        liked ? 'icons/heart.svg' : 'icons/heartOutline.svg',
        height: 20.0,
        width: 20.0,
      ),
    );
  }
}
