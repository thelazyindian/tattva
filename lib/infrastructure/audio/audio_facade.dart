import 'dart:convert';
import 'dart:developer';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';
import 'package:tattva/domain/audio/i_audio_facade.dart';
import 'package:tattva/domain/failure.dart';

@LazySingleton(as: IAudioFacade)
class AudioFacade implements IAudioFacade {
  final FirebaseFunctions _functions;

  AudioFacade(this._functions);

  @override
  Future<Either<Failure, List<AudioCategory>>> getAudioCategories() async {
    try {
      final callable = _functions.httpsCallable('getAudioCategoriesCall');
      final response = await callable.call();
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
      final audioCategories =
          data.keys.map((e) => AudioCategory.fromJson(data[e])).toList();
      // log('RESPONSE $audioCategories');
      return right(audioCategories);
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
}
