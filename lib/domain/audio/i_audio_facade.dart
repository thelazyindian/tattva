import 'package:dartz/dartz.dart';
import 'package:tattva/domain/audio/audio_data_model.dart';
import 'package:tattva/domain/audio/audio_sub_data_model.dart';
import 'package:tattva/domain/failure.dart';

abstract class IAudioFacade {
  Future<Either<Failure, AudioDataModel>> getAudioCategories(
    String token,
  );
  Future<Either<Failure, AudioSubDataModel>> getAudioSubCategories(
    String token,
    String id,
  );
  Future<Either<Failure, Unit>> likeDislikeAudio(
    String token,
    String audioId,
    bool liked,
  );
}
