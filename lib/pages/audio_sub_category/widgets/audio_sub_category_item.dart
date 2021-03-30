import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/domain/core/tattva_audio.dart';

class AudioSubCategoryItem extends StatelessWidget {
  final TattvaAudio tattvaAudio;
  final VoidCallback? onTap;

  const AudioSubCategoryItem({Key? key, required this.tattvaAudio, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final subTitleTextStyle = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: Color(0xFF908A8A),
    );
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: Theme.of(context).primaryColor,
      elevation: 4.0,
      shadowColor: Color(0x40BFBABA),
      child: ListTile(
        onTap: onTap,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: SizedBox(
            height: 43.0,
            width: 43.0,
            child: Image.network(
              tattvaAudio.thumbnail.first.url,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) =>
                  Container(color: Colors.grey.shade200),
            ),
          ),
        ),
        title: Text(
          tattvaAudio.name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Row(
          children: [
            Text(
              '${tattvaAudio.durationInMins} min',
              style: subTitleTextStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              height: 3.0,
              width: 3.0,
              decoration: BoxDecoration(
                  color: Color(0xFF908A8A), shape: BoxShape.circle),
            ),
            Text(
              tattvaAudio.language,
              style: subTitleTextStyle,
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {},
          splashRadius: 24.0,
          icon: SvgPicture.asset(
            'icons/heartOutline.svg',
            height: 15.0,
            width: 15.0,
          ),
        ),
      ),
    );
  }
}
