import 'package:dartz/dartz.dart';
import 'package:tattva/domain/core/tattva_image.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';

abstract class IWallpaperFacade {
  Future<Either<Failure, WallpaperDataModel>> getWallpaperCategories(
    String token,
  );
  Future<Either<Failure, List<Wallpaper>>> getWallpapersFromCategory(
    String token,
    String categoryId,
  );
  Future<Either<Failure, Unit>> downloadImageFile(TattvaImage image);
}
