import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/audio/audio_data_model.dart';
import 'package:tattva/domain/audio/audio_sub_data_model.dart';
import 'package:tattva/domain/audio/i_audio_facade.dart';
import 'package:tattva/domain/failure.dart';

@LazySingleton(as: IAudioFacade)
class AudioFacade implements IAudioFacade {
  final Dio _dio;

  AudioFacade(this._dio);

  @override
  Future<Either<Failure, AudioDataModel>> getAudioCategories(
    String token,
  ) async {
    try {
      final response = await _dio.get(
        '/getAudioCategories',
        queryParameters: {
          'token': token,
        },
      );
      final data = Map<String, dynamic>.from(response.data);

      return right(AudioDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, AudioSubDataModel>> getAudioSubCategories(
    String token,
    String id,
  ) async {
    try {
      final response = await _dio.get(
        '/getAudioSubCategories',
        queryParameters: {
          'token': token,
          'id': id,
        },
      );
      final data = Map<String, dynamic>.from(response.data);

      return right(AudioSubDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> likeDislikeAudio(
    String token,
    String audioId,
    bool liked,
  ) async {
    try {
      final response = await _dio.get(
        '/likeDislikeAudio',
        queryParameters: {
          'token': token,
          'itemId': audioId,
          'liked': liked,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('likeDislikeAudio $data');
      if (data.containsKey('success') && (data['success'] as bool)) {
        return right(unit);
      } else {
        return left(Failure.serverError());
      }
    } on DioError catch (e) {
      debugPrint('likeDislikeAudio ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }
}
