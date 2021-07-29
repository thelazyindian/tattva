import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/feedback/i_feedback_facade.dart';
import 'package:tattva/utils/api_routes.dart';

@LazySingleton(as: IFeedbackFacade)
class FeedbackFacade implements IFeedbackFacade {
  final Dio _dio;

  FeedbackFacade(this._dio);

  @override
  Future<Either<Failure, Unit>> sendFeedback({
    required String token,
    required String feedback,
  }) async {
    try {
      final response = await _dio.post(
        ApiRoutes.feedback,
        queryParameters: {
          'token': token,
        },
        data: {
          'feedback': feedback,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('likeDislikeBlog $data');
      if (data.containsKey('success') && (data['success'] as bool)) {
        return right(unit);
      } else {
        return left(Failure.serverError());
      }
    } on DioError catch (e) {
      debugPrint('likeDislikeBlog ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }
}
