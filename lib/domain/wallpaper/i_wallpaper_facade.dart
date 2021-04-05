import 'package:dartz/dartz.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/domain/wallpaper/wallpaper_data_model.dart';

abstract class IWallpaperFacade {
  Future<Either<Failure, WallpaperDataModel>> getWallpaperCategories();
  Future<Either<Failure, List<Wallpaper>>> getWallpapersFromCategory(
      String categoryId);
}
