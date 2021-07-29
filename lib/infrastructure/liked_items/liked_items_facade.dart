import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/liked_items/i_liked_items_facade.dart';
import 'package:tattva/domain/liked_items/liked_items_data_model.dart';
import 'package:tattva/utils/api_routes.dart';

@LazySingleton(as: ILikedItemsFacade)
class LikedItemsFacade implements ILikedItemsFacade {
  final Dio _dio;

  LikedItemsFacade(this._dio);

  @override
  Future<Either<Failure, LikedItemsDataModel>> getAllLikedItems(
    String token,
  ) async {
    try {
      final response = await _dio.get(
        ApiRoutes.likedItems,
        queryParameters: {'token': token},
      );
      final data = Map<String, dynamic>.from(response.data);
      return right(LikedItemsDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('getAllLikedItems ERR_CODE ${e.response}');
      debugPrint(e.message);
      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedWallpapers({
    required String token,
    required String startAfter,
  }) =>
      getMoreLikedItems(
        token: token,
        startAfter: startAfter,
        pathUri: ApiRoutes.likedWallpapersMore,
      );

  @override
  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedAudios({
    required String token,
    required String startAfter,
  }) =>
      getMoreLikedItems(
        token: token,
        startAfter: startAfter,
        pathUri: ApiRoutes.likedAudiosMore,
      );

  @override
  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedBlogs({
    required String token,
    required String startAfter,
  }) =>
      getMoreLikedItems(
        token: token,
        startAfter: startAfter,
        pathUri: ApiRoutes.likedBlogsMore,
      );

  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedItems({
    required String token,
    required String startAfter,
    required String pathUri,
  }) async {
    try {
      final response = await _dio.get(
        pathUri,
        queryParameters: {
          'token': token,
          'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      return right(LikedItemsDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('getAllLikedItems ERR_CODE ${e.response}');
      debugPrint(e.message);
      return left(Failure.serverError());
    }
  }
}
