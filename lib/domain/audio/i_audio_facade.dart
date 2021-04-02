import 'package:dartz/dartz.dart';
import 'package:tattva/domain/audio/audio_data_model.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/domain/failure.dart';

abstract class IAudioFacade {
  Future<Either<Failure, AudioDataModel>> getAudioCategories();
  Future<Either<Failure, List<AudioSubCategory>>> getAudioSubCategories(
    String id,
  );
  Future<Either<Failure, Unit>> likeDislikeAudio(
    String audioId,
    bool liked,
  );
}
