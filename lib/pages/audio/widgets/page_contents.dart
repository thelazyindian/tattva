import 'package:flutter/material.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';

class PageContents extends StatelessWidget {
  final List<String> textsList;

  const PageContents({
    Key? key,
    required this.textsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: textsList.map((topText) => generateItems(topText)).toList(),
    );
  }

  Widget generateItems(topText) {
    return Column(
      children: [
        AudioSubcategorySection(topText: topText),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
