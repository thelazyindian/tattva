import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/audio/audio_data_model.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/domain/audio/i_audio_facade.dart';
import 'package:tattva/domain/failure.dart';

@LazySingleton(as: IAudioFacade)
class AudioFacade implements IAudioFacade {
  final FirebaseFunctions _functions;

  AudioFacade(this._functions);

  @override
  Future<Either<Failure, AudioDataModel>> getAudioCategories() async {
    try {
      final callable = _functions.httpsCallable('getAudioCategoriesCall');
      final response = await callable.call();
      final data = Map<String, dynamic>.from(jsonDecode(response.data));

      return right(AudioDataModel.fromJson(data));
    } on FirebaseFunctionsException catch (e) {
      debugPrint('ERR_CODE ${e.code}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<AudioSubCategory>>> getAudioSubCategories(
    String id,
  ) async {
    try {
      final callable = _functions.httpsCallable('getAudioSubCategoriesCall');
      final response = await callable.call({'id': id});
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
      final audioCategories =
          (data[data.keys.first]['audioSubCategories'] as List)
              .map((e) => AudioSubCategory.fromJson(e as Map<String, dynamic>))
              .toList();
      // log('RESPONSE $audioCategories');
      return right(audioCategories);
    } on FirebaseFunctionsException catch (e) {
      debugPrint('ERR_CODE ${e.code}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> likeDislikeAudio(
    String audioId,
    bool liked,
  ) async {
    try {
      final callable = _functions.httpsCallable('setLikeDislikeAudioCall');
      final response = await callable.call({
        'audioId': audioId,
        'liked': liked,
      });
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
      debugPrint('likeDislikeAudio $data');
      if (data.containsKey('success') && (data['success'] as bool)) {
        return right(unit);
      } else {
        return left(Failure.serverError());
      }
    } on FirebaseFunctionsException catch (e) {
      debugPrint('likeDislikeAudio ERR_CODE ${e.code}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }
}
