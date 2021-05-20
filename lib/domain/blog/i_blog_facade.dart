import 'package:dartz/dartz.dart';
import 'package:tattva/domain/blog/blog_data_model.dart';
import 'package:tattva/domain/failure.dart';

abstract class IBlogFacade {
  Future<Either<Failure, BlogDataModel>> getBlogCategories({
    required String token,
  });
  Future<Either<Failure, BlogDataModel>> getBlogsFromCategory({
    required String token,
    required String categoryId,
    String? startAfter,
  });
  Future<Either<Failure, BlogDataModel>> getAllBlogs({
    required String token,
    String? startAfter,
  });
  Future<Either<Failure, Unit>> likeDislikeBlog({
    required String token,
    required String blogId,
    required bool liked,
  });
  Future<Either<Failure, String>> getBlogContent({
    required String token,
    required String blogId,
  });
  Future<Either<Failure, BlogDataModel>> getBlogFromId({
    required String token,
    required String blogId,
  });
}
