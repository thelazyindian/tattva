import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tattva/domain/core/tattva_image.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/i_wallpaper_facade.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';
import 'package:tattva/utils/api_routes.dart';

@LazySingleton(as: IWallpaperFacade)
class WallpaperFacade implements IWallpaperFacade {
  final Dio _dio;

  WallpaperFacade(this._dio);

  @override
  Future<Either<Failure, WallpaperDataModel>> getWallpaperCategories({
    required String token,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.wallpaperCategories,
        queryParameters: {
          'token': token,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      return right(WallpaperDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, WallpaperDataModel>> getWallpapersFromCategory({
    required String token,
    required String categoryId,
    String? startAfter,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.wallpaperCategory,
        queryParameters: {
          'token': token,
          'id': categoryId,
          if (startAfter != null) 'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('wallpapers data $data');

      return right(WallpaperDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, WallpaperDataModel>> getWallpaperFromId({
    required String token,
    required String id,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.wallpaper,
        queryParameters: {
          'token': token,
          'id': id,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('wallpapers data $data');
      return right(WallpaperDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);
      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, WallpaperDataModel>> getAllWallpapers({
    required String token,
    String? startAfter,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.wallpaperAll,
        queryParameters: {
          'token': token,
          if (startAfter != null) 'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('wallpapers data $data');

      return right(WallpaperDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> downloadImageFile(TattvaImage image) async {
    try {
      final storageDir = Platform.isAndroid
          ? '/sdcard/Download'
          : (await getApplicationDocumentsDirectory()).path;

      if (await Permission.storage.request().isGranted) {
        await FlutterDownloader.enqueue(
          url: image.url,
          fileName: image.file,
          savedDir: storageDir,
          showNotification: true,
          openFileFromNotification: true,
        );
      }

      return right(unit);
    } on DioError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> likeDislikeWallpaper({
    required String token,
    required String wallpaperId,
    required bool liked,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.wallpaperLike,
        queryParameters: {
          'token': token,
          'itemId': wallpaperId,
          'liked': liked,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('likeDislikeWallpaper $data');
      if (data.containsKey('success') && (data['success'] as bool)) {
        return right(unit);
      } else {
        return left(Failure.serverError());
      }
    } on DioError catch (e) {
      debugPrint('likeDislikeWallpaper ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }
}
