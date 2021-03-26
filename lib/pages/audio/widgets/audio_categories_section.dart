import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_category_item.dart';

class AudioCategoriesSection extends StatelessWidget {
  final List<AudioCategory> audioCategories;

  const AudioCategoriesSection({
    Key? key,
    required this.audioCategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, idx) => const SizedBox(width: 10),
        itemCount: audioCategories.length,
        itemBuilder: (context, idx) {
          final category = audioCategories[idx];
          return AudioCategoryItem(category: category);
        },
      ),
    );
  }
}
