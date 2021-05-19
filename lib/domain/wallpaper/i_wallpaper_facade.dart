import 'package:dartz/dartz.dart';
import 'package:tattva/domain/core/tattva_image.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';

abstract class IWallpaperFacade {
  Future<Either<Failure, WallpaperDataModel>> getWallpaperCategories(
    String token,
  );
  Future<Either<Failure, WallpaperDataModel>> getWallpapersFromCategory({
    required String token,
    required String categoryId,
    String? startAfter,
  });
  Future<Either<Failure, WallpaperDataModel>> getWallpaperFromId({
    required String token,
    required String id,
  });
  Future<Either<Failure, WallpaperDataModel>> getAllWallpapers({
    required String token,
    String? startAfter,
  });
  Future<Either<Failure, Unit>> downloadImageFile(TattvaImage image);
  Future<Either<Failure, Unit>> likeDislikeWallpaper(
    String token,
    String wallpaperId,
    bool liked,
  );
}
