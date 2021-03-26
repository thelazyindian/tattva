import 'package:dartz/dartz.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/domain/failure.dart';

abstract class IAudioFacade {
  Future<Either<Failure, List<AudioCategory>>> getAudioCategories();
  Future<Either<Failure, List<AudioSubCategory>>> getAudioSubCategories(
    String id,
  );
}
