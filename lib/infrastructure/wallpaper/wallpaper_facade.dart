import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';

@LazySingleton(as: IWallpaperFacade)
class WallpaperFacade implements IWallpaperFacade {
  final Dio _dio;

  WallpaperFacade(this._dio);

  @override
  Future<Either<Failure, WallpaperDataModel>> getWallpaperCategories() async {
    try {
      final response =
          await _dio.get('/tattva-app/us-central1/getWallpaperCategories');
      final data = Map<String, dynamic>.from(jsonDecode(response.data));

      return right(WallpaperDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<Wallpaper>>> getWallpapersFromCategory(
      String categoryId) async {
    try {
      final response = await _dio.get(
        '/tattva-app/us-central1/getWallpapersFromCategory',
        queryParameters: {'id': categoryId},
      );
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
      debugPrint('wallpapers data $data');

      List<Wallpaper> wallpapers = (data['wallpapers'] as List)
          .map((e) => Wallpaper.fromJson(e))
          .toList();
      return right(wallpapers);
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }
}
