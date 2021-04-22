import 'package:dartz/dartz.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/liked_items/liked_items_data_model.dart';

abstract class ILikedItemsFacade {
  Future<Either<Failure, LikedItemsDataModel>> getAllLikedItems(
    String token,
  );
  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedWallpapers({
    required String token,
    required String startAfter,
  });
  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedAudios({
    required String token,
    required String startAfter,
  });
  Future<Either<Failure, LikedItemsDataModel>> getMoreLikedBlogs({
    required String token,
    required String startAfter,
  });
}
