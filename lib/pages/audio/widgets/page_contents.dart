import 'package:flutter/material.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/pages/audio/widgets/audio_subcategory_section.dart';

class PageContents extends StatelessWidget {
  final List<AudioSubCategory> audioSubCategories;

  const PageContents({
    Key? key,
    required this.audioSubCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: audioSubCategories
          .map((audioSubCategory) => generateItems(audioSubCategory))
          .toList(),
    );
  }

  Widget generateItems(audioSubCategory) {
    return Column(
      children: [
        AudioSubcategorySection(audioSubCategory: audioSubCategory),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
