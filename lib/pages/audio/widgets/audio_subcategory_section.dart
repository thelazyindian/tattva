import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tattva/pages/audio/widgets/audio_item.dart';

class AudioSubcategorySection extends StatelessWidget {
  final String topText;

  const AudioSubcategorySection({
    Key? key,
    required this.topText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      AudioItem(
        imageUri: 'assets/feather.png',
        heading: "Audio Name",
        firstSubHeading: "3 min",
        secondSubHeading: "Hindi",
      ),
      AudioItem(
        imageUri: 'assets/meditation.png',
        heading: "Audio Name",
        firstSubHeading: "3 min",
        secondSubHeading: "Hindi",
      ),
      AudioItem(
        imageUri: 'assets/meditation.png',
        heading: "Audio Name",
        firstSubHeading: "3 min",
        secondSubHeading: "Hindi",
      ),
      AudioItem(
        heading: "Audio Name",
        firstSubHeading: "3 min",
        secondSubHeading: "Hindi",
      ),
      AudioItem(
        heading: "Audio Name",
        firstSubHeading: "3 min",
        secondSubHeading: "Hindi",
      ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Text(
                topText,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                customBorder: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'icons/forward.svg',
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          height: 120.0,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, idx) => items[idx],
            separatorBuilder: (context, idx) => const SizedBox(width: 10.0),
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}
