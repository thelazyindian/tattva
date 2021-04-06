import 'dart:convert';
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
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';

@LazySingleton(as: IWallpaperFacade)
class WallpaperFacade implements IWallpaperFacade {
  final Dio _dio;

  WallpaperFacade(this._dio);

  @override
  Future<Either<Failure, WallpaperDataModel>> getWallpaperCategories(
      String token) async {
    try {
      final response = await _dio.get(
        '/tattva-app/us-central1/getWallpaperCategories',
        queryParameters: {
          'token': token,
        },
      );
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
    String token,
    String categoryId,
  ) async {
    try {
      final response = await _dio.get(
        '/tattva-app/us-central1/getWallpapersFromCategory',
        queryParameters: {
          'token': token,
          'id': categoryId,
        },
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
}
