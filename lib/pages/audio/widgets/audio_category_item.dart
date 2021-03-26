import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/injection.dart';

class AudioCategoryItem extends StatelessWidget {
  final AudioCategory category;
  const AudioCategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioBloc, AudioState>(
      bloc: getIt<AudioBloc>(),
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () {
            getIt<AudioBloc>().add(AudioEvent.selectedAudioCategory(category));
          },
          child: SizedBox(
            height: 150.0,
            width: 125.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    category.coverImage.first.url,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white
                        .withOpacity(state.selectedAudioCategory.fold(
                      () => 0.6,
                      (selectedCategory) =>
                          category == selectedCategory ? 0.2 : 0.6,
                    )),
                  ),
                  Positioned(
                    bottom: 30.0,
                    left: 10.0,
                    right: 10.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          '${category.averageDurationInMin[0]}-${category.averageDurationInMin[1]}min',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
