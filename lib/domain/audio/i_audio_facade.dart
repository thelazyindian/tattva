import 'package:dartz/dartz.dart';
import 'package:tattva/domain/audio/audio_data_model.dart';
import 'package:tattva/domain/audio/audio_sub_data_model.dart';
import 'package:tattva/domain/failure.dart';

abstract class IAudioFacade {
  Future<Either<Failure, AudioDataModel>> getAudioCategories({
    required String token,
  });
  Future<Either<Failure, AudioSubDataModel>> getAudioSubCategories({
    required String token,
    required String id,
  });
  Future<Either<Failure, Unit>> likeDislikeAudio({
    required String token,
    required String audioId,
    required bool liked,
  });
  Future<Either<Failure, AudioDataModel>> getAudioFromId({
    required String token,
    required String audioId,
  });
}
