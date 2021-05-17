import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/core/tattva_items_model.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/home_items/i_home_items_facade.dart';

@LazySingleton(as: IHomeItemsFacade)
class HomeItemsFacade implements IHomeItemsFacade {
  final Dio _dio;

  HomeItemsFacade(this._dio);

  @override
  Future<Either<Failure, TattvaItemsModel>> getAllItems(
    String token,
  ) async {
    try {
      final response = await _dio.get(
        '/getFeaturedItems',
        queryParameters: {'token': token},
      );
      final data = Map<String, dynamic>.from(response.data);
      return right(TattvaItemsModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('getFeaturedItems ERR_CODE ${e.response}');
      debugPrint(e.message);
      return left(Failure.serverError());
    }
  }
}
