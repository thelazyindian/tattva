import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tattva/domain/subscriptions/i_subscriptions_facade.dart';
import 'package:tattva/domain/subscriptions/subscription.dart';

@LazySingleton(as: ISubscriptionsFacade)
class SubscriptionsFacade implements ISubscriptionsFacade {
  final Dio _dio;

  SubscriptionsFacade(this._dio);

  @override
  Future<Either<Failure, List<Subscription>>> getSubscriptionItems(
      {required String token}) async {
    try {
      final response = await _dio.get(
        '/getSubscriptions',
        queryParameters: {
          'token': token,
        },
      );
      final data = jsonDecode(response.data);
      return right(
          (data as List).map((e) => Subscription.fromJson(e)).toList());
    } on DioError catch (e) {
      debugPrint('ERROR: $e');
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, String>> createSubscriptionItem({
    required String token,
    required String planId,
  }) async {
    try {
      final response = await _dio.get(
        '/createSubscription',
        queryParameters: {
          'token': token,
          'planId': planId,
        },
      );
      // final response = await _dio.get(
      //   '/updateSubscription',
      //   queryParameters: {
      //     'token': token,
      //     'id': 'sub_H9nuj0Vf7SP4ey',
      //     'planId': 'plan_H4bfmOvAmlaupS',
      //   },
      // );
      debugPrint('RESP: $response');

      final data = jsonDecode(response.data);
      debugPrint('DATA: $data');
      return right(Map<String, dynamic>.from(data)['id']);
    } on DioError catch (e, trace) {
      debugPrint('ERROR: $e');
      debugPrint('TRACE: $trace');
      return left(const Failure.serverError());
    }
  }
}
